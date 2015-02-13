CC=g++
CFLAGS=-I. -wall
LIBS=-lboost_timer -lquantlib

all: test_quantlib.so

%.o: %.c %.cc %.h
	$(CC) -c -o $@ $< $(CFLAGS)

test_quantlib.so: test_quantlib.o
	$(CC) -o test_quantlib.so test_quantlib.o -shared $(LIBS)

clean:
	rm -f *.o *.so
