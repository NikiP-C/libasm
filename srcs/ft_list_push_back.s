; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_list_push_back.s                                :+:    :+:             ;
;                                                      +:+                     ;
;    By: nphilipp <nphilipp@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/12 20:34:34 by nphilipp       #+#    #+#                 ;
;    Updated: 2020/03/12 20:58:17 by nphilipp      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

global _ft_list_push_back

section .data
	push rbp
	
.ret:
	pop rbp
	ret