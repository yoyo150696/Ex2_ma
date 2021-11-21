CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=my_mat.o
FLAGS=-Wall -g

all: libmy_mat.so libmy_mat.a progmains progmaind
	$(CC) -c my_mat.o
progmains: $(OBJECTS_MAIN) libmy_mat.a
	$(CC) $(FLAGS) -o progmains $(OBJECTS_MAIN) libmy_mat.a
progmaind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o progmaind $(OBJECTS_MAIN) ./libmy_mat.so
libmy_mat.so: $(OBJECTS_LIB)
	$(CC) -shared -o libmy_mat.so $(OBJECTS_LIB)
libmy_mat.a: $(OBJECTS_LIB)
	$(AR) -rcs libmy_mat.a $(OBJECTS_LIB)	
my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c
main.o: main.c my_mat.h
	$(CC) $(FLAGS) -c main.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so progmains progmaind