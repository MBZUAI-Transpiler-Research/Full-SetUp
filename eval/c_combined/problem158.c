#include <stdio.h>
#include <math.h>

int func0(float a, float b, float c) {
    if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
    return 0;
}


#include <assert.h>
int func0(float a, float b, float c);

int main() {
    assert(func0(3, 4, 5) == 1);
    assert(func0(1, 2, 3) == 0);
    assert(func0(10, 6, 8) == 1);
    assert(func0(2, 2, 2) == 0);
    assert(func0(7, 24, 25) == 1);
    assert(func0(10, 5, 7) == 0);
    assert(func0(5, 12, 13) == 1);
    assert(func0(15, 8, 17) == 1);
    assert(func0(48, 55, 73) == 1);
    assert(func0(1, 1, 1) == 0);
    assert(func0(2, 2, 10) == 0);

    return 0;
}
