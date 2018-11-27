%define SOURCE "%%define SOURCE %4$c%1$s%4$c%2$c%%define FILE %4$cGrace_kid.s%4$c%2$c%%define NONONONO _main%2$c%2$csection .data%2$csrc db SOURCE, 0%2$cfile db FILE, 0%2$c%2$csection .text%2$cglobal _start%2$cglobal _main%2$cglobal _duplicate%2$cextern _dprintf%2$c%2$c_start:%2$ccall NONONONO%2$cret%2$c%2$cNONONONO:%2$ccall _duplicate%2$cret%2$c%2$c%3$c%2$c%3$c open(5) close(6)%2$c%3$c%2$c%2$c_duplicate:%2$cpush rbp%2$cmov rbp, rsp%2$csub rsp, 24%2$clea rdi, [rel file]%2$cmov rsi, 0x0202%2$cmov rdx, 644o%2$cmov rax, 0x2000005%2$csyscall%2$cmov rdi, rax%2$clea rsi, [rel src]%2$clea rdx, [rel src]%2$cmov rcx, 10%2$cmov r8, 59%2$cmov r9, 34%2$ccall _dprintf%2$cmov rax, 0x2000006%2$csyscall%2$cleave%2$cret%2$c"
%define FILE "Grace_kid.s"
%define NONONONO _main

section .data
src db SOURCE, 0
file db FILE, 0

section .text
global _start
global _main
global _duplicate
extern _dprintf

_start:
call NONONONO
ret

NONONONO:
call _duplicate
ret

;
; open(5) close(6)
;

_duplicate:
push rbp
mov rbp, rsp
sub rsp, 24
lea rdi, [rel file]
mov rsi, 0x0202
mov rdx, 644o
mov rax, 0x2000005
syscall
mov rdi, rax
lea rsi, [rel src]
lea rdx, [rel src]
mov rcx, 10
mov r8, 59
mov r9, 34
call _dprintf
mov rax, 0x2000006
syscall
leave
ret
