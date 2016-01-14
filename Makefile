# Grab all .c files in directory, change extensions.
src = $(wildcard *.c)
obj = $(src:.c=.o)

# Compiler
CC = clang
# Compiler flags
CFLAGS = -Wall -g -std=c11
# Library flags
LDFLAGS = -lm

all: myprog

myprog: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

# Clean up after compile/install process
.PHONY: clean
clean:
	rm -f $(obj) myprog
	rm -rf *.dSYM
