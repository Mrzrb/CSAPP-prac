#include "../../lib/csapp.h"
#define N 3
int main()
{
  int status, i;
  pid_t pid[N], retpid;
  for (i = 0; i < N; i++)
  {
    if ((pid[i] = Fork()) == 0)
    {
      exit(100 + i);
    }
    else
    {
      printf("pid:%d\n", pid[i]);
    }
  }
  i = 0;
  while ((retpid = waitpid(pid[i++], &status, 0)) > 0)
  {
    if (WIFEXITED(status))
    {
      printf("child %d terminated normally with status=%d\n",
             retpid,
             WEXITSTATUS(status));
    }
    else
    {
      printf("child %d terminated abnormally\n", pid[i]);
    }
  }

  if (errno != ECHILD)
  {
    unix_error("waitpid error");
  }
  exit(0);
}
