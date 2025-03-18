#include <stdio.h>

int func0(int n) {
    if (n < 1) return 0;
    if (n == 1) return 1;
    int out = 18;
    for (int i = 2; i < n; i++)
        out = out * 10;
    return out;
}


#include <assert.h>
int func0(int n);

int main() {
    assert(func0(1) == 1);
    assert(func0(2) == 18);
    assert(func0(3) == 180);
    assert(func0(4) == 1800);
    assert(func0(5) == 18000);

    return 0;
}
