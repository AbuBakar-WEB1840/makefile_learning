#include "helper1.h"
#include <stdio.h>

/* deliberately large and repetitive code */

static int heavy_compute(int x)
{
    int sum = 0;
    for (int i = 0; i < 100000; i++) {
        sum += (x * i) % 7;
        sum ^= (i << (x & 3));
    }
    return sum;
}

int helper1_calc_0(int x) { return heavy_compute(x + 0); }
int helper1_calc_1(int x) { return heavy_compute(x + 1); }
int helper1_calc_2(int x) { return heavy_compute(x + 2); }
int helper1_calc_3(int x) { return heavy_compute(x + 3); }
int helper1_calc_4(int x) { return heavy_compute(x + 4); }
int helper1_calc_5(int x) { return heavy_compute(x + 5); }
int helper1_calc_6(int x) { return heavy_compute(x + 6); }
int helper1_calc_7(int x) { return heavy_compute(x + 7); }
int helper1_calc_8(int x) { return heavy_compute(x + 8); }
int helper1_calc_9(int x) { return heavy_compute(x + 9); }

void helper1_fun(void)
{
    printf("helper1_fun started\n");

    int total = 0;
    total += helper1_calc_0(1);
    total += helper1_calc_1(2);
    total += helper1_calc_2(3);
    total += helper1_calc_3(4);
    total += helper1_calc_4(5);
    total += helper1_calc_5(6);
    total += helper1_calc_6(7);
    total += helper1_calc_7(8);
    total += helper1_calc_8(9);
    total += helper1_calc_9(10);

    printf("helper1_fun done: %d\n", total);
}
