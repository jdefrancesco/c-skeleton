src = $(wildcard *.c)
obj = $(src:.c=.o)

CFLAGS= -ggdb -Wall -std=gnu11
LDFLAGS = -lGL -lglut -lpng -lz -lm
LDLIBS=-L/opt/local/lib/ -lglib-2.0 -lintl

CC=clang

prog: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) myprog
