global _ft_write
section .text
_error:
	mov rax, -1
	ret
_ft_write:
	mov r9, rsi
	mov r8, rdx
	mov rdx, 0
	mov rax, 0x2000004
	syscall
	cmp rax, 9
	je _error
	mov rsi, r9
	mov rdx, r8
	mov rax, 0x2000004
	syscall
	ret