all: libhello.so

libhello.so: libhello.o
	$(CC) $(LDFLAGS) -shared -o libhello.so libhello.o

libhello.o: hello_world.c
	$(CC) -shared hello_world.c -o libhello.o
