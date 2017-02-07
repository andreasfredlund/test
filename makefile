
INCLUDES=-I/opt/X11/include
LDFLAGS=-L/opt/X11/lib -lX11 -lm

CC = gcc
LD = gcc  
CFLAGS = 
RM = /bin/rm -f
OBJS = galsim.o file_operations.o graphics.o
EXECUTABLE = galsim

all:$(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	$(LD) $(OBJS) -o $(EXECUTABLE) $(LDFLAGS)

graphics.o: graphics.h graphics.c
	$(CC) $(CFLAGS) $(INCLUDES) -c graphics.c

file_operations.o: file_operations.h file_operations.c
	$(CC) $(CFLAGS) -c file_operations.c

galsim.o: galsim.c file_operations.h graphics.h
	$(CC) $(CFLAGS) -c galsim.c 

clean:
	$(RM) $(EXECUTABLE) $(OBJS)
