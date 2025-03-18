#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int func0(int a) {
    for (int i = 0; i * i * i <= abs(a); i++)
        if (i * i * i == abs(a)) return 1;
    return 0;
}


#include <stdio.h>
#include <assert.h>
int func0(int a);

int main() {
    assert(func0(1) == 1);
    assert(func0(2) == 0);
    assert(func0(-1) == 1);
    assert(func0(64) == 1);
    assert(func0(180) == 0);
    assert(func0(1000) == 1);
    assert(func0(0) == 1);
    assert(func0(1729) == 0);

    printf("All tests passed.\n");
    return 0;
}
