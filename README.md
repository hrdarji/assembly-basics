# assembly-basics

Using nasm as the diassembler.

How to compile as elf32:

nasm -f elf32 -o Helloworld.o helloworld.asm  

Link the file using ld:

ld -o Helloworld Helloworld.o 

The above command will create "Helloworld" executable.
