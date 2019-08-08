CC = gcc
BIN = standalone_foo

default: libfoo.a

libfoo.a: foo.o
	ar rcs $@ $^
    
foo.o: foo.c foo.h
	$(CC) -c $<

$(BIN): foo.o
	$(CC) $< -o $@

clean:
	rm -f *.o *.a $(BIN)
