; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_skip_ws.s                                       :+:    :+:             ;
;                                                      +:+                     ;
;    By: nphilipp <nphilipp@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/10 12:33:24 by nphilipp       #+#    #+#                 ;
;    Updated: 2020/03/10 15:25:44 by nphilipp      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; rdi = string, 
; rsi = start string,
global _ft_skip_ws
section .text
_ft_skip_ws:
	cmp [rdi + rsi], byte 9
	jl _no_white
	cmp [rdi + rsi], byte 13
	jg _check_space
	inc rsi
	jmp _ft_skip_ws
_check_space:
	cmp [rdi + rsi], byte 32
	jne _no_white
	inc rsi
	jmp _ft_skip_ws
_no_white:
	mov rax, rsi
	ret