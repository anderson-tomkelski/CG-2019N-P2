CC = g++
LIBS = -lglfw -lGL -lm -lX11 -lglut -lGLU -ldl
CFLAGS = -g -Wall -Wno-deprecated -Wextra
OBJ = main.o glad.o

%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

main: $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

clean:
	-rm -f *.o
