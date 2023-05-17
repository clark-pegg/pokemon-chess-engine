SRC=./src
OBJ=./obj

SRCS=$(wildcard $(SRC)/*.cpp)
OBJS=$(patsubst $(SRC)/%.cpp, $(OBJ)/%.o, $(SRCS))

Engine: $(OBJS)
	gcc -o $@ $^

$(OBJ)/%.o: $(SRC)/%.cpp
	@mkdir -p $(@D)
	gcc -c -o $@ $<
