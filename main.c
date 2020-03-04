/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   main.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: nphilipp <nphilipp@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/23 17:34:31 by nphilipp       #+#    #+#                */
/*   Updated: 2020/03/04 19:53:55 by nphilipp      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>

extern char	*ft_strdup(char *str1);
extern char	*ft_strcpy(char *str1, char *str2);
extern int	ft_strlen(char *str);
extern int	ft_strc(char *str1, char *str2);
extern int	ft_write(int fd, char *str, int count);
extern int	ft_read(int fd, char *str, int count);

int	main(void)
{
	int		ret;
	int 	fd;
	char 	*str;
	char	str1[] = "Hoy";
	char	str2[] = "Hoihoihoi";
	char	str3[] = "Hoy";
	char	str4[] = "Hoihoihoi";

	ret = ft_strc(str2, str1);
	printf("ret = %i\n", ret);
}
