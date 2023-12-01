CC = gcc
CFLAGS = --std=c2x -Wall -Werror -pedantic

.PHONY: all clean

all: main
main: main.o
	$(CC) $(CFLAGS) -o $@ $^
main.o: main.c
	$(CC) $(CFLAGS) -c $<
clean:
	rm main *.o