/**
 *mask_test.c
 */

#include <stdio.h>

int main(){
    int x = 0x87654321;
    int mask = ~0;
    mask = ~(mask <<8);
    printf("%x", x&mask);
}
