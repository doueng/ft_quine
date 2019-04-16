  global  _main

  extern  _open
  extern  _dprintf

  ;; comment

  %macro  FT 0
_main:
  sub     rsp, 8
  lea     rdi, [rel file]
  xor     rsi, rsi
  or      rsi, 0x0001
  or      rsi, 0x0200
  or      rsi, 0x0400
  xor     rdx, rdx
  add     rdx, 0q755
  call    _open
  cmp     rax, 0
  jl      RET
  mov     rdi, rax
  lea     rsi, [rel str]
  lea     rdx, [rel str]
  mov     rcx, 10
  mov     r8, 34
  call    _dprintf
RET:
  add    rsp, 8
  ret
  %endmacro
  %macro  DATA 0
file: db "Grace_kid.s", 0
str:  db "  global  _main%2$c%2$c  extern  _open%2$c  extern  _dprintf%2$c%2$c  ;; comment%2$c%2$c  %%macro  FT 0%2$c_main:%2$c  sub     rsp, 8%2$c  lea     rdi, [rel file]%2$c  xor     rsi, rsi%2$c  or      rsi, 0x0001%2$c  or      rsi, 0x0200%2$c  or      rsi, 0x0400%2$c  xor     rdx, rdx%2$c  add     rdx, 0q755%2$c  call    _open%2$c  cmp     rax, 0%2$c  jl      RET%2$c  mov     rdi, rax%2$c  lea     rsi, [rel str]%2$c  lea     rdx, [rel str]%2$c  mov     rcx, 10%2$c  mov     r8, 34%2$c  call    _dprintf%2$cRET:%2$c  add    rsp, 8%2$c  ret%2$c  %%endmacro%2$c  %%macro  DATA 0%2$cfile: db %3$cGrace_kid.s%3$c, 0%2$cstr:  db %3$c%1$s%3$c%2$c  %%endmacro DATA%2$c%2$c  section .text%2$c  FT%2$c%2$c  section .data%2$c  DATA%2$c"
  %endmacro DATA

  section .text
  FT

  section .data
  DATA
