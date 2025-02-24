#include <stdio.h>

int func0(int n) {
    int ff[100] = {0};
    ff[1] = 0;
    ff[2] = 1;
    for (int i = 3; i <= n; ++i) {
        ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
    }
    return ff[n];
}


#include <assert.h>
int func0(int n);

int main() {
    assert(func0(2) == 1);
    assert(func0(1) == 0);
    assert(func0(5) == 4);
    assert(func0(8) == 24);
    assert(func0(10) == 81);
    assert(func0(12) == 274);
    assert(func0(14) == 927);

    return 0;
}
