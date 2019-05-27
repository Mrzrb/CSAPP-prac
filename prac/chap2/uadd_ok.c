#include <stdio.h>

int uadd_ok(unsigned x, unsigned y){
	return (x+y) > x;
}

int main(int argc, char *argv[]) {
	unsigned x = 2223232U;
	unsigned y = 222232U;
	
	printf("%d", uadd_ok(x,y));
}