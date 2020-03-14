/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   atoi_base.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: nphilipp <nphilipp@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/03/09 19:47:48 by nphilipp       #+#    #+#                */
/*   Updated: 2020/03/09 21:25:34 by nphilipp      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

int ft_strchr_num(char *str, char c)
{
	int i;

	i = 0;
	while (str[i])
	{
		if (str[i] == c)
			return (i);
		i++;
	}
	if (c == '\0')
		return (1);
	return (-1);
}

int check_if_doubles(char *str)
{
	int i;
	
	i = 0;
	while (str[i])
	{
		if (ft_strchr_num(&str[i + 1], str[i]) >= 0)
			return (1);
		i++;
	}
	return (0);
}

int ft_strlen(char *str)
{
	int i;

	i = 0;
	while (str[i])
	{
		i++;
	}
	return (i);
}

int	ft_atoi_base(char *str, char *base)
{
	int i;
	int place;
	int ret;
	int neg;
	int base_len;

	ret = 0;
	i = 0;
	base_len = ft_strlen(base);
	neg = 1;
	if (str == 0 || str[0] == 0)
		return (0);
	if (ft_strchr_num(base, '-') >= 0|| ft_strchr_num(base, '+') >= 0)
		return (0);
	if (check_if_doubles(base))
		return (0);
	while (str[i] == ' ' || (str[i] >= 9 && str[i] <= 13))
		i++;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			neg = -1;
		i++;
	}
	while (str[i])
	{
		place = ft_strchr_num(base, str[i]);
		if (place == -1)
			return (0);
		ret = (ret * base_len) + place;
		i++;
	}
	return (ret * neg);
}

int main(void)
{
	char base[] = "ABCD";
	char str1[] = "BBBB";

	printf("%i\n", ft_atoi_base(str1, base));
}
