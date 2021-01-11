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

OBJSB = ${SRCSB:.c=.o}

HEADERS = libft.h

OBJS = ${SRCS:.c=.o}

NAME = libft.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

RM = rm -f

all:            ${NAME}

bonus:          ${OBJS} ${OBJSB}
                        ar rcs ${NAME} ${OBJS} ${OBJSB}
                        ranlib ${NAME}

$(OBJS):        ${HEADERS}

$(NAME):        ${OBJS}
                        ar rcs ${NAME} ${OBJS}
                        ranlib ${NAME}

%.c%.o:
                        ${CC} ${FLAGS} -c $< -o ${<:.c=.o}

fclean:         clean
                        ${RM} ${NAME}

clean:
                        ${RM} ${OBJS} ${OBJSB}

re:                     fclean all

.PHONY:         all clean fclean re