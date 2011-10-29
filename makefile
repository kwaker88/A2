COMPILER = g++
CCFLAGS = -g -Wall -o

all: server.out client.out
	${COMPILER} server.out client.out -o all

server.out: server.c server_function_skels.c server_function_skels.h server_functions.c server_functions.h rpc.h
	${COMPILER} -c server.c server_function_skels.c server_function_skels.h server_functions.c server_functions.h rpc.h

client.out: client1.c rpc.h
	${COMPILER} -c client1.c rpc.h

clean: 
	rm -rf *.o *.out all



