#include "../../lib/csapp.h"

void sigint_handler(int sig){
    printf("Caught SIGINT!\n");
    /*exit(0);*/
}

int main(){
    if(Signal(SIGINT, sigint_handler) == SIG_ERR)
        unix_error("signal error");
    Pause();
    return 0;
}
