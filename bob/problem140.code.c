#include <stdio.h>

long long func0(int n) {
    long long fact = 1, bfact = 1;
    for (int i = 1; i <= n; i++) {
        fact = fact * i;
        bfact = bfact * fact;
    }
    return bfact;
}


#include <assert.h>
long long func0(int n);

int main() {
    assert(func0(4) == 288);
    assert(func0(5) == 34560);
    assert(func0(7) == 125411328000);
    assert(func0(1) == 1);

    return 0;
}
