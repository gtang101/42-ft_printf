/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ktang <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/14 21:33:51 by ktang             #+#    #+#             */
/*   Updated: 2022/05/17 10:29:29 by ktang            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <stdlib.h>
# include <stdio.h>
# include <unistd.h>
# include "libft.h"

int		ft_char_print(char c);
int		ft_char_type(const char c, va_list arg, int *i);
int		ft_num_count(size_t n, int base);
int		ft_num_print(long int n);
int		ft_str_print(char *str);
int		ft_print_hex(unsigned long n, char c);
int		ft_printf(const char *str, ...);

#endif
