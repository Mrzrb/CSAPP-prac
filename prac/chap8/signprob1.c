#include "../../lib/csapp.h"

volatile int counter = 2;

void handler2(int sig){
    sigset_t mask, prev_mask;

    Sigfillset(&mask);
    Sigprocmask(SIG_BLOCK, &mask, &prev_mask);
    printf("%d",--counter);
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    _exit(0);
}

int main(){

}
