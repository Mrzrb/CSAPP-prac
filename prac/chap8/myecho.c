#include "../../lib/csapp.h"

int main(int argc, char *argv[], char *envp[])
{
  printf("CommandLine args:\n");
  char *temp;
  for (int i = 0; (temp = argv[i]) != NULL; i++)
  {
    printf("argv[%d]: %s\n", i, temp);
  }
  printf("Environment variables:\n");
  for (int i = 0; (temp = envp[i]) != NULL; i++)
  {
    printf("envp[%d]: %s\n", i, temp);
  }
}