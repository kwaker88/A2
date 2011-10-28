COMPILER = g++
CCFLAGS = -g -Wall -o
test: test.cpp
	${COMPILER} ${CCFLAGS} test.out test.cpp
clean: 
	rm -rf *.o *.out



