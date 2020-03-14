; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_atoi_base.s                                     :+:    :+:             ;
;                                                      +:+                     ;
;    By: nphilipp <nphilipp@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/10 12:15:27 by nphilipp       #+#    #+#                 ;
;    Updated: 2020/03/12 13:39:56 by nphilipp      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; rdi = string
; rsi = base
; if error, pop!!!!!!

extern _ft_strchr
extern _ft_skip_ws
extern _ft_strlen
extern _ft_write
global _ft_atoi_base
section .text
_ft_atoi_base:
	cmp rdi, 0 ; check if string exsists
	je	_error
	cmp [rdi], byte 0 ; check if the string isn't empty
	je _error
	cmp [rdi + rsi], byte 45
	je _min_found
	mov r9, 1
	cmp [rdi + rsi], byte 43
	je _plus_found
_check_base:
	pop r8 ; no things on stack, base/rsi in r8 
	push rdi ; push rdi/string one thing on stack
	mov rdi, r8 ; move base to rdi to check in strchr
	mov sil, 45 ; to check if - is in base
	xor rdx, rdx
	push rax  ; push rax/first character that isn't whitespace -/+ on stack
	call _ft_strchr
	mov r9, 3 ; debug
	cmp rax, -1
	jne _error_2
	mov rsi, 43 ; to check if + is in base
	call _ft_strchr
	inc r9 ; debug
	cmp rax, -1
	jne _error_2
	xor rdx, rdx
_check_double:
	mov sil, byte [rdi + rdx]
	inc rdx
	mov r8, rdx
	inc r9 ; debug
	call _ft_strchr
	mov rdx, r8
	mov r9, 11
	cmp rax, -1
	mov r9, 13
	jne _error_2
	mov r9, 20 ; debug
	cmp [rdi + rdx], byte 0
	mov r9, 9 ; debug
	je _make_num
	mov r9, 20 ; debug
	jmp _check_double
_min_found:
	;mov r9, -1
	inc rax
	jmp _check_base
_plus_found:
	inc rax
	jmp _check_base
_make_num:
	call _ft_strlen
	mov r11, rax ; r11 is length for * .. 
	pop r8 ; getting the rax, where to stopped after whitespaces
	mov rsi, rdi ; string back to being rdi. 
	pop rdi
	xor r10, r10 ; r10 is 0 = end result
	mov r9, 8 ; debug

; rdi = base
; rsi = string
_loop_nums:
	mov sil, byte [rsi + r8]
	movsx rax, sil
	ret
	call _ft_strchr
	cmp rax, -1 ; rax has return value of strchr, either -1 is not found or location of match in string
	je _error_1
	mov rdx, rax ; moving rdx to rax because I need rax for mul
	pop rax
	mul r11 ; rax * r11 (length of base string)
	add rax, rdx ; rax + rdx (position of match) 
	inc r8 ; increment the index
	cmp [rsi + r8], byte 0
	je _end
	push rax
	jmp _loop_nums
_end:
	mov rax, 30
	ret
_error_2:
	pop r9
	pop r9
	mov rax, r10
	ret
_error_1:
	pop r9
	mov rax, 349
	ret
_error:
	mov rax, 10
	ret