SRCS=Engine.cpp Piece.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: Engine

Engine: $(OBJS)
	gcc -o Engine $(OBJS)

%.o: %.cpp
	gcc -c $<