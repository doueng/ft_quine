  global  _main

  extern  _open
  extern  _dprintf
  extern  _asprintf
  extern  _strcmp
  extern  _system
  extern  _puts

  section  .text
_main:
  sub    rsp, 248

  xor    r8, r8
  mov    r8, 5
  cmp    rdi, 0
  jle    RET
  sub    r8, 1

  lea    rdi, [rel currfile]
  lea    rsi, [rel startfile]
  call  _strcmp
  cmp    rax, 0
  je    ADD
BACK:
  mov    rdx, r8
  lea    rsi, [rel newfile]
  lea    rdi, [rsp]
  call  _asprintf

  mov    rdi, [rsp]
  xor    rsi, rsi
  or    rsi, 0x0001
  or    rsi, 0x0200
  or    rsi, 0x0400
  mov    rdx, 0q440
  call  _open
  cmp    rax, 0
  jl    RET
  mov    rdi, rax
  lea    rsi, [rel str]
  lea    rdx, [rel str]
  mov    rcx, 10
  mov    r8, 34
  call  _dprintf
  lea  r9, [rsp+24]
  mov rdi, r9
  lea rsi, [rel cmd]
  mov rdx, rsp
  mov rcx, r8
  call _asprintf
  mov rdi, r9
  call _system

RET:
  add    rsp, 248
  ret

ADD:
  add    r8, 1
  jmp    BACK

  section  .data
currfile:  db __FILE__, 0
newfile:db "Sully_%d.s", 0
startfile:db "Sully.s", 0
str:db "  global  _main%2$c%2$c  extern  _open%2$c  extern  _dprintf%2$c  extern  _asprintf%2$c  extern  _strcmp%2$c  extern  _system%2$c  extern  _puts%2$c%2$c  section  .text%2$c_main:%2$c  sub    rsp, 248%2$c%2$c  xor    r8, r8%2$c  mov    r8, 5%2$c  cmp    rdi, 0%2$c  jle    RET%2$c  sub    r8, 1%2$c%2$c  lea    rdi, [rel currfile]%2$c  lea    rsi, [rel startfile]%2$c  call  _strcmp%2$c  cmp    rax, 0%2$c  je    ADD%2$cBACK:%2$c  mov    rdx, r8%2$c  lea    rsi, [rel newfile]%2$c  lea    rdi, [rsp]%2$c  call  _asprintf%2$c%2$c  mov    rdi, [rsp]%2$c  xor    rsi, rsi%2$c  or    rsi, 0x0001%2$c  or    rsi, 0x0200%2$c  or    rsi, 0x0400%2$c  mov    rdx, 0q440%2$c  call  _open%2$c  cmp    rax, 0%2$c  jl    RET%2$c  mov    rdi, rax%2$c  lea    rsi, [rel str]%2$c  lea    rdx, [rel str]%2$c  mov    rcx, 10%2$c  mov    r8, 34%2$c  call  _dprintf%2$c  lea  r9, [rsp+24]%2$c  mov rdi, r9%2$c  lea rsi, [rel cmd]%2$c  mov rdx, rsp%2$c  mov rcx, r8%2$c  call _asprintf%2$c  mov rdi, r9%2$c  call _system%2$c%2$cRET:%2$c  add    rsp, 248%2$c  ret%2$c%2$cADD:%2$c  add    r8, 1%2$c  jmp    BACK%2$c%2$c  section  .data%2$ccurrfile:  db __FILE__, 0%2$cnewfile:db %3$cSully_%%d.s%3$c, 0%2$cstartfile:db %3$cSully.s%3$c, 0%2$cstr:db %3$c%1$s%3$c, 0%2$ccmd:db %3$cnasm -fmacho64 %%1$s && gcc -Werror -Wextra -Wall Sully_%%2$d.o -o Sully_%%2$d && ./Sully_%%2$d%3$c, 0%2$c", 0
cmd:db "nasm -fmacho64 %1$s && gcc -Werror -Wextra -Wall Sully_%2$d.o -o Sully_%2$d && ./Sully_%2$d", 0
