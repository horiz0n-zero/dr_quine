section .data
	i dd 5
	name db "Sully_%d"
	sname db "Sully_%d.s"
	namebuffer times 30 db 0
	snamebuffer times 30 db 0

section .text
	global start
	global _main
	extern _malloc
	extern _sprintf
	extern _dprintf

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 32
	lea rdi, [rel namebuffer]
	lea rsi, [rel name]
	mov rdx, i
	call _sprintf
	lea rdi, [rel snamebuffer]
	lea rsi, [rel sname]
	call _sprintf
	mov rdi, 1
	lea rsi, [rel name]
	mov rdx, i
	call _dprintf
	leave
	ret




















