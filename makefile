CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=my_mat.o
FLAGS= -Wall -g

all: libmy_mat.a progmains	
progmains: $(OBJECTS_MAIN) libmy_mat.a 
	$(CC) $(FLAGS) -o connections $(OBJECTS_MAIN) libmy_mat.a
libmy_mat.a: $(OBJECTS_LIB)
	$(AR) -rcs libmy_mat.a $(OBJECTS_LIB)	
my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c
main.o: main.c my_mat.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a progmains connections
