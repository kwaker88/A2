COMPILER = g++
CCFLAGS = -g -Wall -o

all: server.o client1.o
	${COMPILER} server.o client1.o -o all

server.o: server.c server_function_skels.c server_function_skels.h server_functions.c server_functions.h rpc.h
	${COMPILER} -c server.c server_function_skels.c server_function_skels.h server_functions.c server_functions.h rpc.h

client1.o: client1.c rpc.h
	${COMPILER} -c client1.c rpc.h

clean: 
	rm -rf *.o *.out all



