# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: edrouot <edrouot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/26 12:53:21 by edrouot           #+#    #+#              #
#    Updated: 2023/07/04 10:26:46 by edrouot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME	= minishell

LIBFT = ./libft/libft.a

SRCS	= minishell.c \
		lexer_utils.c \
		lexer_token.c \
		lexer_envp.c 
			
OBJS	= $(SRCS:.c=.o)

CC 	= cc

CFLAGS = -g -Wall -Wextra -Werror 

all:	$(NAME)

${NAME}: $(OBJS)
	@make -C ./libft
	@$(CC) $(OBJS) $(LIBFT) $(CFLAGS) -o $(NAME) -lreadline
	@echo "Compiling complete"

clean: 
	@rm -f $(OBJS)
	@make clean -C libft

fclean: clean
	@rm -f $(NAME)
	@rm -f $(LIBFT)

re:	fclean

.PHONY:	all clean fclean re
