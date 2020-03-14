# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nphilipp <nphilipp@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/29 15:30:25 by nphilipp       #+#    #+#                 #
#    Updated: 2020/03/12 18:57:01 by nphilipp      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
NAME_BONUS = libasm_bonus.a

TEST = test

SRC = ./srcs/ft_strlen.s ./srcs/ft_write.s ./srcs/ft_read.s ./srcs/ft_strcpy.s ./srcs/ft_strcmp.s ./srcs/ft_strdup.s 
SRC_BONUS = ./srcs/ft_atoi_base.s

OBJ = $(SRC:.s=.o)
OBJ_BONUS = $(SRC_BONUS:.s=.o)

TEST_FILES = criterion.c

FLAGS = -Wall -Werror -Wextra
INC = -lcriterion 

all: $(NAME)

$(NAME): $(OBJ)
	@ar -rcs $(NAME) $(OBJ)
	@echo "Making libary"

%.o: %.s
	@nasm -fmacho64 $< -o $@
	@echo "Making OBJECT files"

bonus: $(OBJ_BONUS) $(OBJ)
	@ar -rcs $(NAME_BONUS) $(OBJ) $(OBJ_BONUS)
	@echo "Making bonus libary"

clean:
	rm -f $(OBJ)
	rm -f $(TEST)
fclean: clean
	rm -f $(NAME)
	rm -f $(BONUS)

re: fclean all

$(TEST): $(NAME) $(TEST_FILES)
	echo "Making test"
	@gcc $(FLAGS) -o $(TEST) -L. -lasm $(INC) $(TEST_FILES)
	@./test