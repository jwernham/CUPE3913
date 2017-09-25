CC = gcc
CFLAGS = -Wall -std=c99 -pedantic -Iincludes -c -o

all: 

	$(CC) $(CFLAGS) boggle.o boggle.c
	$(CC) $(CFLAGS) word_checker.o word_checker.c
	$(CC) $(CFLAGS) scoreboard.o scoreboard.c
	$(CC) $(CFLAGS) dictionary.o dictionary.c
	$(CC) $(CFLAGS) board_generator.o board_generator.c
	$(CC) boggle.o word_checker.o scoreboard.o dictionary.o board_generator.o -o Cupe

clean:
	rm $*.o
