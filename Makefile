#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nsikora <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/07 12:28:40 by nsikora           #+#    #+#              #
#    Updated: 2019/09/18 14:43:53 by nsikora          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	= libft.a

CC		= gcc

CFLAGS	= -Wall -Wextra -Werror

OBJS	= $(SRCS:.c=.o)

RM		= rm -f 

INCLUDE	= libft.h

SRCS	= ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putstr_fd.c \
		ft_putnbr_fd.c \
		ft_memalloc.c \
		ft_strsplit.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_strmapi.c \
		ft_strlen.c \
		ft_isalpha.c \
		ft_isalnum.c \
		ft_isdigit.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_isspace.c \
		ft_islower.c \
		ft_isupper.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_strnstr.c \
		ft_strncpy.c \
		ft_strncat.c \
		ft_strlcat.c \
		ft_strncmp.c \
		ft_strrchr.c \
		ft_striter.c \
		ft_strnequ.c \
		ft_memccpy.c \
		ft_memmove.c \
		ft_putchar.c \
		ft_putendl.c \
		ft_putnbr.c \
		ft_putstr.c \
		ft_strstr.c \
		ft_strcat.c	\
		ft_strchr.c \
		ft_strcpy.c \
		ft_strcmp.c	\
		ft_strdup.c	\
		ft_strclr.c \
		ft_strdel.c \
		ft_strnew.c \
		ft_strmap.c \
		ft_strequ.c \
		ft_strsub.c \
		ft_memset.c \
		ft_memchr.c \
		ft_memcpy.c \
		ft_memcmp.c \
		ft_memdel.c \
		ft_lstnew.c \
		ft_lstdel.c \
		ft_lstadd.c \
		ft_lstdelone.c \
		ft_lstiter.c \
		ft_lstmap.c \
		ft_bzero.c \
		ft_itoa.c \
		ft_atoi.c

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c
	$(CC) -o $@ -c $< -I $(INCLUDE) $(CFLAGS)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY:	all re clean fclean
