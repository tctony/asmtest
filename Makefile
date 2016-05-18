.PHONY: clean pre

a.out: main.o asm.o
	gcc main.o asm.o -Wl,-no_pie -o a.out

main.o: main.c
	gcc -c main.c

asm.o: asm.asm
	nasm -f macho64 asm.asm -o asm.o

clean:
	rm -f *.o a.out

pre: asm.asm
	nasm -e asm.asm
