#include <stdio.h>

int func0(int n) {
    int f[100];
    f[0] = 0;
    f[1] = 0;
    f[2] = 2;
    f[3] = 0;
    for (int i = 4; i <= n; i++) {
        f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
    }
    return f[n];
}


#include <stdio.h>
#include <assert.h>
int func0(int n);

int main() {
    assert(func0(5) == 4);
    assert(func0(8) == 28);
    assert(func0(10) == 104);
    assert(func0(12) == 386);

    return 0;
}
