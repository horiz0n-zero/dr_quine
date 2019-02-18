%define I 5
%define Y I - 1
%define SYSCALL(nb) 0x2000000 | nb
%define SOURCE "%%define I %2$d%3$c%%define Y I - 1%3$c%%define SYSCALL(nb) 0x2000000 | nb%3$c%%define SOURCE %4$c%1$s%4$c%3$c%3$csection .data%3$csource db SOURCE, 0%3$cname db %4$cSully_%%d%4$c, 0%3$csname db %4$cSully_%%d.s%4$c, 0%3$cnamebuffer times 42 db 0%3$csnamebuffer times 42 db 0%3$cexecute db %4$c~/.brew/bin/nasm -f macho64 %%s.s -o %%1$s.o && ld -macosx_version_min 10.8 -lSystem %%1$s.o -o %%1$s && rm -rf %%1$s.o%4$c, 0%3$cexecutebuffer times 512 db 0%3$c%3$csection .text%3$cglobal start%3$cglobal _main%3$cglobal _end%3$cextern _sprintf%3$cextern _dprintf%3$cextern _system%3$cextern _execve%3$c%3$cstart:%3$ccall _main%3$cret%3$c%3$c_main:%3$cpush rbp%3$cmov rbp, rsp%3$csub rsp, 48%3$clea rdi, [rel namebuffer]%3$clea rsi, [rel name]%3$cmov rdx, I%3$ccall _sprintf%3$clea rdi, [rel snamebuffer]%3$clea rsi, [rel sname]%3$cmov rdx, I%3$ccall _sprintf%3$clea rdi, [rel executebuffer]%3$clea rsi, [rel execute]%3$clea rdx, [rel namebuffer]%3$ccall _sprintf%3$cmov rdi, I%3$ccmp rdi, 0%3$cjl _end%3$clea rdi, [rel snamebuffer]%3$cmov rsi, 0x202%3$cmov rdx, 644o%3$cmov rax, SYSCALL(5)%3$csyscall%3$cmov rdi, rax%3$clea rsi, [rel source]%3$clea rdx, [rel source]%3$cmov rcx, Y%3$cmov r8, 10%3$cmov r9, 34%3$ccall _dprintf%3$clea rdi, [rel executebuffer]%3$ccall _system%3$clea rdi, [rel namebuffer]%3$cmov rsi, 0%3$cmov rdx, 0%3$ccall _execve%3$cleave%3$cret%3$c%3$c_end:%3$cleave%3$cret%3$c"
section .data
source db SOURCE, 0
name db "Sully_%d", 0
sname db "Sully_%d.s", 0
namebuffer times 42 db 0
snamebuffer times 42 db 0
execute db "~/.brew/bin/nasm -f macho64 %s.s -o %1$s.o && ld -macosx_version_min 10.8 -lSystem %1$s.o -o %1$s && rm -rf %1$s.o", 0
executebuffer times 512 db 0

section .text
global start
global _main
global _end
extern _sprintf
extern _dprintf
extern _system
extern _execve

start:
call _main
ret

_main:
push rbp
mov rbp, rsp
sub rsp, 48
lea rdi, [rel namebuffer]
lea rsi, [rel name]
mov rdx, I
call _sprintf
lea rdi, [rel snamebuffer]
lea rsi, [rel sname]
mov rdx, I
call _sprintf
lea rdi, [rel executebuffer]
lea rsi, [rel execute]
lea rdx, [rel namebuffer]
call _sprintf
mov rdi, I
cmp rdi, 0
jl _end
lea rdi, [rel snamebuffer]
mov rsi, 0x202
mov rdx, 644o
mov rax, SYSCALL(5)
syscall
mov rdi, rax
lea rsi, [rel source]
lea rdx, [rel source]
mov rcx, Y
mov r8, 10
mov r9, 34
call _dprintf
lea rdi, [rel executebuffer]
call _system
lea rdi, [rel namebuffer]
mov rsi, 0
mov rdx, 0
call _execve
leave
ret

_end:
leave
ret
