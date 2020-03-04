global _main
section .text
_main:
	mov rdi, 0
	mov rsi, msg
	mov rdx, len
	jmp _ft_write
	mov rax, 0x2000001
	mov rdi, 0
	syscall
section .data
	msg: db "Hello, world!", 10
	len: equ $ - msg