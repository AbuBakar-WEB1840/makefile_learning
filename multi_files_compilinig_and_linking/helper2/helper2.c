#include "helper2.h"
#include <stdio.h>

static long slow_algorithm(long n)
{
    long r = 1;
    for (long i = 1; i < 500000; i++) {
        r = (r * (i + n)) % 1000003;
        r ^= (i << (n & 7));
    }
    return r;
}

long helper2_work_0(long x) { return slow_algorithm(x + 0); }
long helper2_work_1(long x) { return slow_algorithm(x + 1); }
long helper2_work_2(long x) { return slow_algorithm(x + 2); }
long helper2_work_3(long x) { return slow_algorithm(x + 3); }
long helper2_work_4(long x) { return slow_algorithm(x + 4); }

void helper2_fun(void)
{
    printf("helper2_fun started\n");

    long result = 0;
    result += helper2_work_0(10);
    result += helper2_work_1(20);
    result += helper2_work_2(30);
    result += helper2_work_3(40);
    result += helper2_work_4(50);

    printf("helper2_fun done: %ld\n", result);
}
