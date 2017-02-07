

CC = gcc
LD = gcc  
CFLAGS = 
LDFLAGS = 
RM = /bin/rm -f
OBJS = galsim.o file_operations.o graphics.o
EXECUTABLE = galsim

all:$(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(EXECUTABLE)

graphics.o: graphics.h graphics.c
	$(CC) $(CFLAGS) -c graphics.c

file_operations.o: file_operations.h file_operations.c
	$(CC) $(CFLAGS) -c file_operations.c

test1.o: galsim.c file_operations.h graphics.h
	$(CC) $(CFLAGS) -c galsim.c 

clean:
	$(RM) $(EXECUTABLE) $(OBJS)
