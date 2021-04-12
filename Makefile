all: libhello.so

libhello.so: libhello.o
	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o libhello.so libhello.o

libhello.o: hello_world.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c hello_world.c -o libhello.o

clean:
	rm libhello.o libhello.so
