; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strchr.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: nphilipp <nphilipp@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/10 12:23:33 by nphilipp       #+#    #+#                 ;
;    Updated: 2020/03/10 18:08:02 by nphilipp      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; rdi = string, 
; sil = char, 
; rdx = starting location in string which we return in rax.
global _ft_strchr
section .text
_ft_strchr:
	cmp byte [rdi + rdx], sil
	je _found
	inc rdx
	cmp [rdi + rdx], byte 0
	je _not_found
	jmp _ft_strchr
_found:
	mov rax, rdx
	ret
_not_found:
	mov rax, -1
	ret