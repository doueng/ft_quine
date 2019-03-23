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
	/bin/rm -f Colleen.o
	/bin/rm -f Grace.o
	/bin/rm -f Sully.o

fclean: clean
	/bin/rm -f Grace_kid.c
	/bin/rm -f a.out
	/bin/rm -f Sully_*
	/bin/rm -f Sully
	/bin/rm -f Colleen
	/bin/rm -f Grace
	/bin/rm -f tmp/*

re: fclean all Colleen Grace Sully
