global _ft_strcmp
section .text
_ft_strcmp:
	mov r10, 0
	xor rcx, rcx
loop:
	mov cl, byte [rdi + r10]
	cmp BYTE [rsi + r10], cl
	jne end
	inc r10
	cmp cl, byte 0
	jne loop
	mov rax, 0
	ret
end:
	sub cl, [rsi + r10]
	movsx rax, cl
	ret
