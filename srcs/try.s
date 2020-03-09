global _main
section .text
_main:
	mov rdi, 1
	mov rsi, msg
	mov rdx, len
	mov rax, 0x200004
	syscall
	mov rax, 0x2000001
	mov rdi, 0
	syscall
section .data
	msg: db "Hello, world!", 10
	len: equ $ - msg