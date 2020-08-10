
#include <stdio.h>

extern int fun1(int x1, int x2, int x3, int x4, int x5, int x6, int x7, int x8);

int main(int argc, char *argv[])
{
    printf("fun1: %d \n", fun1(1,2,3,4,5,6,7,8));
    return 0;
}
