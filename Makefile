all: libhello.so

libhello.so: libhello.o
	$(CC) $(LDFLAGS) -o libhello.so libhello.o

libhello.o: hello_world.c
	$(CC) -shared hello_world.c -o libhello.o
