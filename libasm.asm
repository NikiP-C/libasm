; section.bss

section .data
	msg db 'Hello, world!', 0xa
	len equ $-msg

section .text
	global _start

_start:
	mov edx,len
	mov ecx,msg
	mov	ebx,1
	mov eax,4  ; 4 is system call for write 

	mov eax,1 ; 1 is system call for exit
	int 0x80