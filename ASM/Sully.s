%define I 5
%define Y I - 1
%define SYSCALL(nb) 0x2000000 | nb
%define SOURCE ""

section .data
source db SOURCE, 0
name db "Sully_%d", 0
sname db "Sully_%d.s", 0
namebuffer times 30 db 0
snamebuffer times 30 db 0
execute times 512 db 0
executeformat db "nasm -f macho64 %s.s -o %1$s.o && ld -macosx_version_min 10.8 -lSystem %1$s.o -o %1$s && rm -rf %1$s.o", 0

section .text
global start
global _main
global _file
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
lea rdi, [rel execute]
lea rsi, [rel executeformat]
lea rdx, [rel namebuffer]
call _sprintf
lea rdi, [rel execute]
call _system
lea rdi, [rel namebuffer]
mov rsi, 0
mov rdx, 0
call _execve
leave
ret
