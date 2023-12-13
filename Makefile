CC       = gcc
CFLAGS   = --std=c2x -Wall -Werror -Wimplicit
HEADERS  = 
PROGRAM  = main

OBJDIRE := Objects
SOURCES := $(wildcard *.c)
OBJECTS := $(patsubst %.c, $(OBJDIRE)/%.o, $(SOURCES))

$(OBJDIRE)/%.o: %.c $(HEADERS)
				mkdir -p $(OBJDIRE)
				$(CC) $(CFLAGS) -c $< -o $@

.PHONY: 		all clean

all: 			$(PROGRAM)

$(PROGRAM):		$(OBJECTS) 
				$(CC) $(CFLAGS) -o $@ $^
%.o:			%.c $(HEADERS)
				$(CC) $(CFLAGS) -c $<
clean:
				rm -r $(PROGRAM) Objects
