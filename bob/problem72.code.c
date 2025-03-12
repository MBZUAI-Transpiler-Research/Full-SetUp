#include <stdio.h>
#include <math.h>

float func0(float a, float b, float c) {
if (a + b <= c || a + c <= b || b + c <= a) return -1;
float s = (a + b + c) / 2;
float area = sqrtf(s * (s - a) * (s - b) * (s - c));
return roundf(area * 100) / 100;
}


#include <stdio.h>
#include <math.h>
#include <assert.h>
float func0(float a, float b, float c);

int main() {
    assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
    assert(fabs(func0(1, 2, 10) + 1) < 0.01);
    assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
    assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
    assert(fabs(func0(1, 2, 3) + 1) < 0.01);
    assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
    assert(fabs(func0(2, 6, 3) + 1) < 0.01);
    assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
    assert(fabs(func0(2, 2, 10) + 1) < 0.01);

    return 0;
}
