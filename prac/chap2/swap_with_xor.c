/*
 * swap_with_xor.c
 */

#include <stdio.h>

void swap(int* p, int* q){
    *p = *p ^ *q;
    *q = *p ^ *q;
    *p = *p ^ *q;
}

void reverse_array(int arr[], int cnt){
    int first, last;
    for(first = 0, last=cnt-1; first<=last; first++,last--){
        swap(&arr[first], &arr[last]);
        printf("progress: %d\t%d\n", arr[first], arr[last]);
    }
}

int main(){
    int a[] = {1,2,3,4,5};
    reverse_array(a, 5);
    int length = sizeof(a) / sizeof(a[0]);
    for(int x = 0; x<length; x++){
        printf("%d\t", a[x]);
    }
    return 0;
}

