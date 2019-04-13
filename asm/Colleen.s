	global	_main

	extern	_printf

	;; comment
	section	.text
_main:
	;; comment
	sub		rsp, 8
	call	_rofl
	lea		rdi, [rel msg]
	lea		rsi, [rel msg]
	mov		rdx, 10
	mov		rcx, 34
	call	_printf
	add		rsp, 8

_rofl:
	ret

	section	.data
msg:db		"	global	_main%2$c%2$c	extern	_printf%2$c%2$c	;; comment%2$c	section	.text%2$c_main:%2$c	;; comment%2$c	sub		rsp, 8%2$c	call	_rofl%2$c	lea		rdi, [rel msg]%2$c	lea		rsi, [rel msg]%2$c	mov		rdx, 10%2$c	mov		rcx, 34%2$c	call	_printf%2$c	add		rsp, 8%2$c%2$c_rofl:%2$c	ret%2$c%2$c	section	.data%2$cmsg:db		%3$c%1$s%3$c%2$c"
