global _main
section .data
	addr db "yellow", 10
section .text
_main:
	mov rax, 0x2000004
	mov rdi, 1;
	mov rsi, addr
	mov [rsi], byte 'H'
	mov byte [rsi + 5], '!'
	mov rdx, 7
	syscall
	mov rax, 0x2000001
	mov rdi, 0
	syscall
