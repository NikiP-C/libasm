; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcpy.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: nphilipp <nphilipp@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/09 12:10:24 by nphilipp       #+#    #+#                 ;
;    Updated: 2020/03/09 12:10:27 by nphilipp      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcpy
section .text
_ret:
	mov rax, [rdi + r8]
	ret
_ft_strcpy:
	mov r8, 0;
loop:
	mov r9b, byte [rsi + r8]
	mov byte [rdi + r8], r9b
	cmp [rsi + r8], byte 0
	je _ret
	inc r8
	jmp loop
