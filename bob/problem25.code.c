#include <stdio.h>

int func0(int n) {
    for (int i = 2; i * i <= n; i++)
        if (n % i == 0) return n / i;
    return 1;
}


#include <assert.h>
int func0(int n);

int main() {
    assert(func0(3) == 1);
    assert(func0(7) == 1);
    assert(func0(10) == 5);
    assert(func0(100) == 50);
    assert(func0(49) == 7);

    return 0;
}
