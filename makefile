all: client1 server

client1: client1.o rpc.o
	g++ client1.o rpc.o -o client1

server: server.o server_functions.o server_function_skels.o rpc.o
	g++ server.o server_functions.o server_function_skels.o rpc.o -o server

client1.o: client1.c
	g++ -c client1.c

server.o: server.c 
	g++ -c server.c

server_functions.o: server_functions.c server_functions.h
	g++ -c server_functions.c
	
server_function_skels.o: server_function_skels.c server_function_skels.h
	g++ -c server_function_skels.c

rpc.o: rpc.c rpc.h
	g++ -c rpc.c
	
clean: 
	rm -rf *o client1 server
	