%define DATA src db "hello"
%define
%define

section .data
	DATA

section .text
	global _start
	global _main
	global _duplicate
	extern _dprintf
	extern _open

_start:
	call _main
	ret

_main:
	call _duplicate
	ret

_duplicate:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	
	ret
;
;	duplicate
;
