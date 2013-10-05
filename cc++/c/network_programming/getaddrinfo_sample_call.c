
int status;
struct addrinfo *servinfo;

memset(&hints, 0, sizeof hints);

hints.ai_family 	= AF_UNSPEC;
hints.ai_socktype 	= SOCK_STREAM;
hint.ai_flags 		= AI_PASSIVE;

if((status = getaddrinfo(NULL, "3490", &hints, &servinfo)) != 0){
	fprintf(stderr, "getaddrinfo error : %s\n", gai_strerror(status));
	exit(1);
}

freeaddrinfo(servinfo);