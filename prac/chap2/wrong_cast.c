#include <stdio.h>

float sum(float a[], int length){
  int i;
  float result = 0;

  for(i = 0; i<= length-1; i++){
    result += a[i];
  }

  return result;
}

int main(){
  float a[] = {};
  printf("%f", sum(a, 0));
}