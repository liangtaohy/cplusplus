sources = $(wildcard *.cpp)
targets = $(patsubst %.cpp,%, $(sources))
CC = gcc
all: $(targets)
$(targets) : % : %.cpp
	$(CC) -lstdc++ --std=c++11 -g -o $@ $<