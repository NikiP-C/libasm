/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   criterion.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: nphilipp <nphilipp@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/03/02 12:51:36 by nphilipp       #+#    #+#                */
/*   Updated: 2020/03/09 14:39:44 by nphilipp      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <criterion/criterion.h>
#include "libasm.h"
#include "testcases.h"
#include <unistd.h>
#include <fcntl.h>

TestSuite(libasm);

Test(libasm, libasm_strlen)
{
	cr_expect_eq(strlen(TEST1), ft_strlen(TEST1), "Basic test");
	cr_expect_eq(strlen(TEST2), ft_strlen(TEST2), "Basic test 2");
	cr_expect_eq(strlen(TEST3), ft_strlen(TEST3), "Empty string");
	cr_expect_eq(strlen(TEST4), ft_strlen(TEST4), "Newlines");
	cr_expect_eq(strlen(TEST5), ft_strlen(TEST5), "100.000 digits of pi");
	cr_expect_eq(strlen(TEST6), ft_strlen(TEST6), "spaces");
	cr_expect_eq(strlen(TEST7), ft_strlen(TEST7), "Unusual characters");
	cr_expect_eq(strlen(TEST8), ft_strlen(TEST8), "Character after NULL termination");
}
// Test(libasm, libasm_write)
// {
// 	cr_expect_eq(write(1, TEST1, 4), ft_write(1, TEST1, 4));
// 	cr_expect_eq(write(1, TEST2, 4), ft_write(1, TEST2, 4));
// 	cr_expect_eq(write(1, TEST3, 4), ft_write(1, TEST3, 4));
// 	cr_expect_eq(write(1, TEST4, 4), ft_write(1, TEST4, 4));
// 	cr_expect_eq(write(1, TEST5, 4), ft_write(1, TEST5, 4));
// 	cr_expect_eq(write(1, TEST6, 4), ft_write(1, TEST6, 4));
// 	cr_expect_eq(write(1, TEST7, 4), ft_write(1, TEST7, 4));
// }
Test(libasm, libasm_ft_strcpy)
{
	ft_strcpy(OVERWRITE2, TEST1);
	cr_expect_eq(OVERWRITE2, TEST1);
	ft_strcpy(OVERWRITE2, TEST2);
	cr_expect_eq(OVERWRITE2, TEST2);
	ft_strcpy(OVERWRITE2, TEST3);
	cr_expect_eq(OVERWRITE2, TEST3);
	ft_strcpy(OVERWRITE2, TEST4);
	cr_expect_eq(OVERWRITE2, TEST4);
	ft_strcpy(OVERWRITE2, TEST5);
	cr_expect_eq(OVERWRITE2, TEST5);
	ft_strcpy(OVERWRITE2, TEST6);
	cr_expect_eq(OVERWRITE2, TEST6);
	ft_strcpy(OVERWRITE2, TEST7);
	cr_expect_eq(OVERWRITE2, TEST7);
	ft_strcpy(OVERWRITE2, TEST8);
	cr_expect_eq(OVERWRITE2, TEST8);
}
// Test(libasm, libasm_read)
// {

// 	cr_expect_eq(read(1, TEST1, 4), ft_read(1, TEST1, 4));
// 	cr_expect_eq(read(1, TEST2, 4), ft_read(1, TEST2, 4));
// 	cr_expect_eq(read(1, TEST3, 4), ft_read(1, TEST3, 4));
// 	cr_expect_eq(read(1, TEST4, 4), ft_read(1, TEST4, 4));
// 	cr_expect_eq(read(1, TEST5, 4), ft_read(1, TEST5, 4));
// 	cr_expect_eq(read(1, TEST6, 4), ft_read(1, TEST6, 4));
// 	cr_expect_eq(read(1, TEST7, 4), ft_read(1, TEST7, 4));
// }