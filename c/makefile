FLAGS = -Werror -Wextra -Wall
# SRC = Colleen.c \
# 		Grace.c \
# 		Sully.c

# SRCO = $(SRC:.c=.o)

all: Colleen Grace Sully

Colleen:
	gcc $(FLAGS) Colleen.c -o Colleen

Grace:
	gcc $(FLAGS) Grace.c -o Grace

Sully:
	gcc $(FLAGS) Sully.c -o Sully

clean:

fclean: clean

re: fclean all Colleen Grace Sully
