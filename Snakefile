rule all:
	input:
		"hello/world.txt",

rule hello_world:
	output:
		"hello/world.txt",
	shell:
		"""
		echo "Hello, World!" > {output}
		"""
