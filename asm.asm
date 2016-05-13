  default rel

  segment .data

  segment .bss

  segment .text
  global _asm_1024, _asm_read_int

_asm_1024:
  mov rax, 1024
  ret

_asm_read_int:

