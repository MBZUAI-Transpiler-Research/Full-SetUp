#include <stdio.h>

int func0(int n) {
    int f[1000] = {0};
    f[0] = 0;
    f[1] = 1;
    for (int i = 2; i <= n; i++)
        f[i] = f[i - 1] + f[i - 2];
    return f[n];
}


#include <assert.h>
int func0(int n);

int main() {
    assert(func0(10) == 55);
    assert(func0(1) == 1);
    assert(func0(8) == 21);
    assert(func0(11) == 89);
    assert(func0(12) == 144);

    return 0;
}
