cheers = ['Bonjour', 'Ciao', 'Hello', 'Hola']

rule all:
	input:
		expand("{cheer}/world.txt", cheer=cheers),

rule hello_world:
	output:
		"{cheer}/world.txt",
	shell:
		"""
		echo "{wildcards.cheer}, World!" > {output}
		"""
