# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwinthei <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/20 13:26:35 by jwinthei          #+#    #+#              #
#    Updated: 2019/02/07 18:14:31 by jwinthei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libftprintf.a

SRC	=	ft_printf.c	itoa_base.c				output.c		\
		printstr.c	numeric_processing.c	types_analis.c	\
		patoi.c

OBJ = $(SRC:.c=.o)

INCL= libft/includes/

LIB = libft/libft.a

LIBP= -lftprintf

FLG = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	make -C libft/ fclean && make -C libft/
	gcc -c $(SRC) -I $(INCL) $(FLG)
	cp $(LIB) $(NAME)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f *.o
	make -C libft/ clean

fclean: clean
	rm -f $(NAME)
	make -C libft/ fclean

re: fclean all
