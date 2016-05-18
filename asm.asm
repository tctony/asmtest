default rel

extern _scanf

global _asm_1024
global _asm_hello
global _asm_read_int


segment .data

_asm_hello:
  db "hello asm", 0

  int_format      db  "%d", 0


segment .bss


segment .text

_asm_1024:
  mov rax, 1024
  ret

_asm_read_int:
  enter 0x10, 0
  ; push  rbp
  ; mov   rbp, rsp
  ; sub   rsp, 0x10

  mov   rdi, qword int_format
  lea   rsi, [rbp-4]
  mov    al, 0
  call  _scanf

  mov   eax, [rbp-4]
  ; add   rsp, 0x10
  ; pop   rbp
  leave
  ret
