#include <stdio.h>

int func0(int n) {
    for (int i = 2; i * i <= n; i++)
        while (n % i == 0 && n > i) n = n / i;
    return n;
}


#include <assert.h>
int func0(int n);

int main() {
    assert(func0(15) == 5);
    assert(func0(27) == 3);
    assert(func0(63) == 7);
    assert(func0(330) == 11);
    assert(func0(13195) == 29);

    return 0;
}
