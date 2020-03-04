global _ft_strlen
section .text
_ft_strlen:
	mov rax, 0
	jmp _loop;
_loop:
	cmp [rdi + rax], byte 0
	je _ret
	inc rax
	jmp _loop
_ret:
	ret
