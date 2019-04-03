	global	_main

	extern	_printf

	;; comment
	section	.text
_main:
	sub		rsp, 8
	call	_rofl
	mov		rdi, msg
	mov		rsi, msg
	mov		rdx, 10
	mov		rcx, 9
	mov		r8, 34
	call	_printf
	add		rsp, 8

_rofl:
	ret

	section	.data
msg:db		"%3$cglobal%3$c_main%2$c%2$c%3$cextern%3$c_printf%2$c%2$c%3$c;; comment%2$c%3$csection%3$c.text%2$c_main:%2$c%3$csub%3$c%3$crsp, 8%2$c%3$ccall%3$c_rofl%2$c%3$cmov%3$c%3$crdi, msg%2$c%3$cmov%3$c%3$crsi, msg%2$c%3$cmov%3$c%3$crdx, 10%2$c%3$cmov%3$c%3$crcx, 9%2$c%3$cmov%3$c%3$cr8, 34%2$c%3$ccall%3$c_printf%2$c%3$cadd%3$c%3$crsp, 8%2$c%2$c_rofl:%2$c%3$cret%2$c%2$c%3$csection%3$c.data%2$cmsg:db%3$c%3$c%4$c%1$s%4$c%2$c"
