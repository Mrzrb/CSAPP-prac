#include <stdio.h>

void multstore(long,long, long *);
int mult2(long x, long y);
int main(){
    long d;
    multstore(2,3,&d);
    printf("2*3 ----> %ld\n", d);
	return 0;
}

void multstore(long x, long y, long *dest){
    long t = mult2(x, y);
    *dest = t;
}

int mult2(long x, long y){
    long s = x * y;
    return s;
}
