.PHONY: all clean test

SRC := main.c
BIN := main

all: ${BIN}

clean:
	rm -f ./${BIN}

test:
	./${BIN} foo bar

${BIN}: ${SRC}
	gcc -o $@ ${SRC}
