
int status;
struct addrinfo *serviceinfo;

memset(&hints, 0, sizeof hints);

hints.ai_family 	= AF_UNSPEC;
hints.ai_socktype 	= SOCK_STREAM;
hint.ai_flags 		= AI_PASSIVE;

if 
