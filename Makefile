# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ktang <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/14 21:45:31 by ktang             #+#    #+#              #
#    Updated: 2022/05/17 10:29:08 by ktang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra -Iincludes -Ilibft -I . -c 

SRCS = srcs/ft_char_print.c \
	   srcs/ft_char_type.c \
	   srcs/ft_num_count.c \
	   srcs/ft_num_print.c \
	   srcs/ft_str_print.c \
	   srcs/ft_print_hex.c \
	   srcs/ft_printf.c 

OBJS_DEST = mv *.o srcs

OBJS = $(SRCS:c=o)

all: $(NAME)

$(NAME):
	$(MAKE) -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(CFLAGS) $(SRCS)
	$(OBJS_DEST)
	ar rcs $(NAME) $(OBJS)

clean:
	$(MAKE) clean -C ./libft
	rm -f $(OBJS)

fclean: clean
	$(MAKE) fclean -C ./libft
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
