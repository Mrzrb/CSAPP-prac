#include "../../lib/csapp.h"

int main(){
    pid_t pid;

    if((pid = Fork()) == 0){
        Pause();
        exit(0);
    }

    Kill(pid, SIGKILL);
    exit(0);
}
