#include <stdlib.h>
#include <stdio.h>

int main () {
    printf("Look at /proc/%d/maps\n", getpid());

    // allocate 200 KiB, forcing a mmap instead of brk
    char * addr = (char *) malloc(800);

    getchar();

    free(addr);

    return 0;
}
