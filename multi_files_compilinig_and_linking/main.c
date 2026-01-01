#include <stdio.h>
#include "helper1.h"
#include "helper2.h"

int main(void)
{
    printf("main start\n");

    helper1_fun();
    helper2_fun();

    printf("main end\n");
    return 0;
}
