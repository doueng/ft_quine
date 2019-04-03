FLAGS = -Werror -Wextra -Wall -g
# SRC = Colleen.c \
# 		Grace.c \
# 		Sully.c

# SRCO = $(SRC:.c=.o)

all: Colleen Grace
# Grace Sully

Colleen:
	nasm -fmacho64 Colleen.s
	gcc $(FLAGS) Colleen.o -o Colleen

Grace:
	nasm -fmacho64 Grace.s
	gcc $(FLAGS) Grace.o -o Grace

Sully:
	nasm -fmacho64 Sully.s
	gcc $(FLAGS) Sully.o -o Sully

clean:
	/bin/rm -f Colleen.o
	/bin/rm -f Grace.o
	/bin/rm -f Sully.o

fclean: clean
	/bin/rm -f Grace_kid.s
	/bin/rm -rf *.dSYM
	/bin/rm -f a.out
	/bin/rm -f Sully_*
	/bin/rm -f Sully
	/bin/rm -f Colleen
	/bin/rm -f Grace
	/bin/rm -f tmp/*

re: fclean all

