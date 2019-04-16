FLAGS = -Werror -Wextra -Wall

all: Colleen Grace Sully

Colleen: Colleen.o
	gcc $(FLAGS) Colleen.o -o Colleen

Grace: Grace.o
	gcc $(FLAGS) Grace.o -o Grace

Sully: Sully.o
	gcc $(FLAGS) Sully.o -o Sully

clean:
	/bin/rm -f Colleen.o
	/bin/rm -f Grace.o
	/bin/rm -f Sully.o

fclean: clean
	/bin/rm -f Grace_kid.c
	/bin/rm -f Sully
	/bin/rm -f Colleen
	/bin/rm -f Grace

re: fclean all
