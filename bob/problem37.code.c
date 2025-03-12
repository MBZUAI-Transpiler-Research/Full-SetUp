#include <stdio.h>

int func0(int n) {
    int count = 0;
    for (int i = 0; i < n; i++)
        if (i % 11 == 0 || i % 13 == 0) {
            int q = i;
            while (q > 0) {
                if (q % 10 == 7) count += 1;
                q = q / 10;
            }
        }
    return count;
}


#include <stdio.h>
#include <assert.h>
int func0(int n);

int main() {
    assert(func0(50) == 0);
    assert(func0(78) == 2);
    assert(func0(79) == 3);
    assert(func0(100) == 3);
    assert(func0(200) == 6);
    assert(func0(4000) == 192);
    assert(func0(10000) == 639);
    assert(func0(100000) == 8026);
}
