#include <stdio.h>

int func0(int n) {
    int f1 = 1, f2 = 2, m;
    int count = 0;
    while (count < n) {
        f1 = f1 + f2;
        m = f1; f1 = f2; f2 = m;
        int isprime = 1;
        for (int w = 2; w * w <= f1; w++) {
            if (f1 % w == 0) {
                isprime = 0; break;
            }
        }
        if (isprime) count += 1;
        if (count == n) return f1;
    }
    return 0;
}


#include <stdio.h>
#include <assert.h>
int func0(int n);

int main() {
    assert(func0(1) == 2);
    assert(func0(2) == 3);
    assert(func0(3) == 5);
    assert(func0(4) == 13);
    assert(func0(5) == 89);
    assert(func0(6) == 233);
    assert(func0(7) == 1597);
    assert(func0(8) == 28657);
    assert(func0(9) == 514229);
    assert(func0(10) == 433494437);

    return 0;
}
