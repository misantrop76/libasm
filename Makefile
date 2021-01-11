# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mminet <mminet@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/16 14:22:20 by mminet            #+#    #+#              #
#    Updated: 2021/01/11 18:47:04 by mminet           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #


vpath %c src

SRCS =  t_read.s
		ft_strcmp.s\
		t_strcpy.s\
		ft_strdup.s\
		ft_strlen.s\
		ft_write.s\

OBJS = ${SRCS:.s=.o}

NAME = libasm.a

NA = nasm -f macho64

FLAGS = -Wall -Wextra -Werror

RM = rm -rf

all:            ${NAME}

$(NAME):        ${OBJS}
                        ar rcs ${NAME} ${OBJS}
                        ranlib ${NAME}

%.o:			%.s
				$(NA) $(NA_FLAGS) $<

fclean:         clean
                        ${RM} ${NAME}

clean:
                        ${RM} ${OBJS}

re:                     fclean all

.PHONY:         all clean fclean re