#include "../../lib/csapp.h"

void handler1(int sig){
    int olderror = errno;
    
    if(waitpid(-1, NULL, 0)<0){
        printf("test");
    }
    Sleep(1);
    errno = olderror;
}

int main(){

}
