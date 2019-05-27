#include <stdio.h>
#include <string.h>


int strlonger(char* a, char* b){
  return strlen(a) > strlen(b);
}

int main(){
  char * a = "";
  char * b = "1234";
  printf("%d", strlonger(a,b));
}