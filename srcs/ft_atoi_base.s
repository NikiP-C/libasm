; **************************************************************************** ;
;   0                                                                            ;
;                                                         ::::::::             ;
;    ft_atoi_base2.s                                    :+:    :+:             ;
;                                                      +:+                     ;
;    By: nphilipp <nphilipp@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/12 13:46:28 by nphilipp       #+#    #+#                 ;
;    Updated: 2020/03/12 17:14:52 by nphilipp      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

global _ft_atoi_base
extern _ft_strchr
extern _ft_strlen
; rdi = string
; rsi = base

_ft_atoi_base2:
	push r13
	push r14
	cmp rdi, 0
	je _error
	cmp rsi, 0
	je _error
	cmp [rdi], byte 0
	je _error
	push rdi
	mov rdi, rsi
	pop r9
	call _ft_strlen
	mov r11, rax
	inc r11
	mov r8, 0 ; counter
	mov rdx, 0
; r9 holds string
; rdi holds base
.check_double:
	mov sil, [rdi + rdx]
	inc rdx
	cmp [rdi + rdx], byte 0
	je .check_sign_base
	call _ft_strchr
	cmp rax, -1
	jne _error
	jmp .check_double
.check_sign_base:
	mov sil, 43
	mov rdx, 0
	call _ft_strchr
	cmp rax, -1.
	jne _error
	mov sil, 45
	mov rdx, 0
	call _ft_strchr
	cmp rax, -1
	jne _error
.check_sign:
	cmp [r9], byte 45
	je .neg_found
	mov r14, 1
	cmp [r9], byte 43
	je .plus_found
	jmp .set_start
.neg_found:
	mov r14, -1
	inc r8
	jmp .set_start
.plus_found:
	inc r8
	jmp .set_start
.set_start: 
	mov r10, 0 ; save rax
	mov rdx, 0
.loop_num:
	mov sil, byte [r9 + r8]
	call _ft_strchr
	cmp rax, -1
	je _error
	mov r13, rax
	mov rax, r10
	mul r11
	add rax, r13
	inc r8
	cmp [r9 + r8], byte 0
	je _end
	mov r10, rax
	jmp .loop_num
_end:
	mul r14
	pop r13
	pop r14
	ret
_error:
	pop r13
	pop r14
	mov rax, 0
	ret
