

CC = gcc
LD = gcc
CFLAGS = 
LDFLAGS = 
RM = /bin/rm -f
OBJS = test1.o file_operations.o
EXECUTABLE = galsim

all:$(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(EXECUTABLE)

file_operations.o: file_operations.h file_operations.c
	$(CC) $(CFLAGS) -c file_operations.c

galsim.o: galsim.c file_operations.h
	$(CC) $(CFLAGS) -c test1.c 

clean:
	$(RM) $(EXECUTABLE) $(OBJS)
