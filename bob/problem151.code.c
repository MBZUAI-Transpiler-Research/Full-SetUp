#include <stdio.h>

int func0(int n, int x, int y) {
    int isp = 1;
    if (n < 2) isp = 0;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) isp = 0;
    }
    if (isp) return x;
    return y;
}


#include <assert.h>
int func0(int n, int x, int y);

int main() {
    assert(func0(7, 34, 12) == 34);
    assert(func0(15, 8, 5) == 5);
    assert(func0(3, 33, 5212) == 33);
    assert(func0(1259, 3, 52) == 3);
    assert(func0(7919, -1, 12) == -1);
    assert(func0(3609, 1245, 583) == 583);
    assert(func0(91, 56, 129) == 129);
    assert(func0(6, 34, 1234) == 1234);
    assert(func0(1, 2, 0) == 0);
    assert(func0(2, 2, 0) == 2);

    return 0;
}
