
CC=gcc
CFLAGS=-g -Wall -D_FILE_OFFSET_BITS=64
LDFLAGS=-lfuse

OBJ=fs.o node.o dir.o

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

fs: $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -lm -o fs

.PHONY: clean
clean:
	rm -f *.o fs

