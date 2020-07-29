CXX = g++
CXXFLAGS = -Wall -g -lglfw3 -lGL -ldl -pthread -lm
ENTRY = main.cpp
BIN_NAME = out
SRC_DIR = ./src
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)

all:
	$(CXX) $(SRC_DIR)/$(ENTRY) -o $(BIN_NAME) $(CXXFLAGS)

clean:
	rm -f  ./*.o
	rm -rf ./*/*.o

mrproper: clean
	rm -f $(BIN_NAME)

remake: mrproper $(BIN_NAME)

slave: slave.o
	$(CXX) $(LDFLAGS) -o $@ $^