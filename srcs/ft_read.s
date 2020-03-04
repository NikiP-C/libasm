global _ft_read
section .text
_error:
	mov rax, -1
	ret
_ft_read:
	mov r9, rsi
	mov r8, rdx
	mov rdx, 0
	mov rax, 0x2000003
	syscall
	cmp rax, 9
	je _error
	mov rsi, r9
	mov rdx, r8
	mov rax, 0x2000003
	syscall
	ret