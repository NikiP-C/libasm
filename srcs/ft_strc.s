global _ft_strc
section .text
less:
	sub cl, [rsi + r10]
	movsx rax, cl 
	ret
_ft_strc:
	mov r10, 0
	xor rcx, rcx
	xor rax, rax
loop:
	mov cl, byte [rdi + r10]
	cmp BYTE [rsi + r10], cl
	jne less
	inc r10
	cmp cl, byte 0
	jne loop
	mov rax, 0
	ret
