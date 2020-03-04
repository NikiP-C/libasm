global _ft_strcmp
section .text
less:
	mov rax, -1
	ret
great:
	mov rax, 1
	ret
_ft_strcmp:
	mov r10, 0
	xor rcx, rcx
loop:
	mov cl, byte [rdi + r10]
	cmp BYTE [rsi + r10], cl
	jg less
	jl great
	inc r10
	cmp cl, byte 0
	jne loop
	mov rax, 0
	ret
