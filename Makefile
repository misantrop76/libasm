# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mminet <mminet@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 15:46:10 by mminet            #+#    #+#              #
#    Updated: 2021/01/13 15:46:13 by mminet           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

$(VERBOSE).SILENT:

SRCS =  ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

OBJS = ${SRCS:.s=.o}

NAME = libasm.a

NA = nasm 

NA_FLAGS = -f macho64

FLAGS = -Wall -Wextra -Werror

RM = rm -rf

all:	${NAME}

$(NAME):	${OBJS}
	ar rcs ${NAME} ${OBJS}
	ranlib ${NAME}
	@echo "libasm done"

%.o:	%.s
	$(NA) $(NA_FLAGS) $<

run: $(NAME)
	gcc $(NAME) main.c -o test && ./test

fclean:	clean
		${RM} ${NAME} test

clean:
		${RM} ${OBJS} ${OBJSB}
		@echo "clean done"

re:		fclean all

.PHONY:	all clean fclean re
