/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   main.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: nphilipp <nphilipp@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/23 17:34:31 by nphilipp       #+#    #+#                */
/*   Updated: 2020/03/12 18:43:25 by nphilipp      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>

extern char	*ft_strdup(char *str1);
extern char	*ft_strcpy(char *str1, char *str2);
extern int	ft_strlen(char *str);
extern int	ft_strc(char *str1, char *str2);
extern int	ft_write(int fd, char *str, int count);
extern int	ft_read(int fd, char *str, int count);
extern int ft_atoi_base2(char *str, char *base);
extern int ft_strchr(char *str, char c, int num);

int	main(void)
{
	char base[] = "-ABCD";
	char str1[] = "BBBB";
	int ret;

	printf("%i\n", ft_atoi_base2(str1, base));
	//ret = ft_strchr("hallo hallo hallo AABBCBD", '\0', 0);
	//printf("ret = %i\n", ret);
}
