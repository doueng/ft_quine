FLAGS = -Werror -Wextra -Wall

all: Colleen Grace Sully

Colleen.o: Colleen.s
	nasm -fmacho64 Colleen.s

Colleen: Colleen.o
	gcc $(FLAGS) Colleen.o -o Colleen

Grace.o: Grace.s
	nasm -fmacho64 Grace.s

Grace: Grace.o
	gcc $(FLAGS) Grace.o -o Grace

Sully.o: Sully.s
	nasm -fmacho64 Sully.s

Sully: Sully.o
	gcc $(FLAGS) Sully.o -o Sully

clean:
	/bin/rm -f Colleen.o
	/bin/rm -f Grace.o
	/bin/rm -f Sully.o

fclean: clean
	/bin/rm -f test.s
	/bin/rm -f Grace_kid.s
	/bin/rm -rf *.dSYM
	/bin/rm -f a.out
	/bin/rm -f Sully_*
	/bin/rm -f Sully
	/bin/rm -f Colleen
	/bin/rm -f Grace
	/bin/rm -f tmp/*

re: fclean all

