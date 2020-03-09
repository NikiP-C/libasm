; rdi = str

global _ft_strdup
extern _ft_strlen
extern _malloc
section .text
_ft_strdup:
	cmp rdi, 0
	je	_ret
	call _ft_strlen
	push rdi
	mov rdi, rax
	inc rdi
	call _malloc
	cmp rax, 0
	je _ret
	mov r10, 0
	pop rdi
_loop:
	mov r11b, [rdi + r10]
	mov [rax + r10], r11b
	inc r10
	cmp r11b, byte 0
	jne _loop
_ret:
	ret