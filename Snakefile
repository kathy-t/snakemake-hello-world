rule all:
	input:
		expand("{cheer}/world.txt", cheer=['Bonjour', 'Ciao', 'Hello', 'Hola']),

rule hello_world:
	output:
		"{cheer}/world.txt",
	shell:
		"""
		echo "{wildcards.cheer}, World!" > {output}
		"""
