SRC = test.cpp
CC = c++
CFLAGS = -std=c++98
OBJ = $(SRC:.cpp=.o)
NAME = prog

all : $(NAME)

$(NAME) : $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)
clean :
	rm -rf $(OBJ)
fclean : clean
	rm -rf $(NAME)
re : fclean all $(NAME)

.PHONY: all fclean clean re