global _ft_strcpy
section .text
_ret:
	mov rax, [rsi + r8]
	ret
_loop:
	mov r9, [rdi + r8]
	mov [rsi + r8], r9
	cmp [rdi + r8], byte 0
	je _ret
	inc r8
	jmp _loop
_ft_strcpy:
	mov r8, 0;
	jmp _loop
