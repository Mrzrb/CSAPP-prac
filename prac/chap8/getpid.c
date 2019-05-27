#include "../../lib/csapp.h"
#include <sys/types.h>
#include <stdio.h>
int main(void)
{
    pid_t pid;
    int x = 1;

    pid = Fork();
    if (pid == 0)
    {
        printf("child: x=%d\n", pid);
        exit(0);
    }
    printf("parent: x=%d\n", pid);
}
