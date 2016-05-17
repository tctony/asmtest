default rel


segment .data
global _asm_hello

_asm_hello:
  db "hello asm", 0


segment .bss


segment .text
global _asm_1024

_asm_1024:
  mov rax, 1024
  ret
