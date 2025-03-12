#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int func0(const char *value) {
    double w;
    w = atof(value);
    return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
}


#include <assert.h>
int func0(const char *value);

int main() {
    assert(func0("10") == 10);
    assert(func0("14.5") == 15);
    assert(func0("-15.5") == -16);
    assert(func0("15.3") == 15);
    assert(func0("0") == 0);

    return 0;
}