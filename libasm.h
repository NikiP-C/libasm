/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   libasm.h                                           :+:    :+:            */
/*                                                     +:+                    */
/*   By: nphilipp <nphilipp@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/03/02 12:48:25 by nphilipp       #+#    #+#                */
/*   Updated: 2020/03/02 18:10:56 by nphilipp      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

extern char	*ft_strdup(char *str1);
extern char	*ft_strcpy(char *str1, char *str2);
extern int	ft_strlen(char *str);
extern int	ft_strcmp(char *str1, char *str2);
extern int	ft_write(int fd, char *str, int count);
extern int	ft_read(int fd, char *str, int count);