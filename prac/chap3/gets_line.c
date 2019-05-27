#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libc.h>
char *getss(char* s){
  int c;
  char * dest = s;
  while((c=getchar()) != '\n' && c!= EOF)
  *dest ++ = c;
  if(c == EOF && dest == s)
  return NULL;
  *dest++ = '\n';
  return s;
}

char *get_line()
{
  char buf[4];
  char *result;
  getss(buf);
  result = (char *)malloc(strlen(buf));
  strcpy(result, buf);
  return result;
}

int main(){
  get_line();
}