#include <stdio.h>
#include <unistd.h>
#include <stirng.h>

// gcc -m32 -o getenvvar -c getenvvar.c
// usage: ./getenvvar VAR binary
int main(int argc, char **argv) {
	char *ptr;
	// get env var
	ptr = getenv(argv[1]);

	// Since argv[0] is pushed in '_'  (ref: https://stackoverflow.com/questions/40489161/why-this-piece-of-code-can-get-environment-variable-address), we need to account for that by moving the ptr accordingly.
	ptr += strlen(argv[0]) - strlen(argv[2]);

	// let user know we found something!
	printf("%s found at %p\n", argv[1], ptr);
	return (0);
}
