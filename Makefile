CC = gcc
CFLAGS = -Wall -Werror -Wextra


all: main

main: main.o mainhead.h stb_image_resize.h stb_image_write.h stb_image.h 
	$(CC) $(CFLAGS) -c main.c -o main.o
	$(CC) main.o -o image_to_ascii.a -lm

clean:
	rm -rf *.o *.a*
rebuild: clean all 