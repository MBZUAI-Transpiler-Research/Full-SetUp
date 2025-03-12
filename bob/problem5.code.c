#include <stdio.h>
#include <math.h>

float func0(float numbers[], int size) {
    float sum = 0;
    float avg, msum, mavg;
    int i = 0;

    for (i = 0; i < size; i++)
        sum += numbers[i];

    avg = sum / size;
    msum = 0;

    for (i = 0; i < size; i++)
        msum += fabs(numbers[i] - avg);

    return msum / size;
}


#include <assert.h>
#include <math.h>
float func0(float numbers[], int size);

int main() {
    float case1[] = {1.0, 2.0, 3.0};
    assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);

    float case2[] = {1.0, 2.0, 3.0, 4.0};
    assert(fabs(func0(case2, 4) - 1.0) < 1e-4);

    float case3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
    assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);

    return 0;
}