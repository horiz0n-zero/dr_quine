section .text
	global start
	global _main
	global _print
	extern _printf
;
;	_start->_main->_print
;

_start:
	call _main
	ret

_main:
	call _print
	ret

_print:
;
;	rdi, rsi, rdx, rdx, r8...r15
;
	push rbp
	mov rbp, rsp
	sub rsp, 24
	lea rdi, [rel src]
	lea rsi, [rel src]
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	mov r9, 59
	call _printf
	leave
	ret

section .data
	src db "section .text%2$c%3$cglobal start%2$c%3$cglobal _main%2$c%3$cglobal _print%2$c%3$cextern _printf%2$c%5$c%2$c%5$c%3$c_start->_main->_print%2$c%5$c%2$c%2$c_start:%2$c%3$ccall _main%2$c%3$cret%2$c%2$c_main:%2$c%3$ccall _print%2$c%3$cret%2$c%2$c_print:%2$c%5$c%2$c%5$c%3$crdi, rsi, rdx, rdx, r8...r15%2$c%5$c%2$c%3$cpush rbp%2$c%3$cmov rbp, rsp%2$c%3$csub rsp, 24%2$c%3$clea rdi, [rel src]%2$c%3$clea rsi, [rel src]%2$c%3$cmov rdx, 10%2$c%3$cmov rcx, 9%2$c%3$cmov r8, 34%2$c%3$cmov r9, 59%2$c%3$ccall _printf%2$c%3$cleave%2$c%3$cret%2$c%2$csection .data%2$c%3$csrc db %4$c%1$s%4$c, 0%2$c", 0
