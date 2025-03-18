#include <stdio.h>
#include <stdlib.h>

void func0(int num, int *result) {
    int even_count = 0, odd_count = 0;
    num = abs(num);
    
    do {
        int digit = num % 10;
        if (digit % 2 == 0) {
            even_count++;
        } else {
            odd_count++;
        }
        num /= 10;
    } while (num > 0);

    result[0] = even_count;
    result[1] = odd_count;
}


#include <assert.h>
#include <string.h>
void func0(int num, int *result);

int issame(const int *a, const int *b, int size) {
    return memcmp(a, b, size * sizeof(int)) == 0;
}

int main() {
    int result[2];

    func0(7, result);
    assert(issame(result, (int[]){0, 1}, 2));

    func0(-78, result);
    assert(issame(result, (int[]){1, 1}, 2));

    func0(3452, result);
    assert(issame(result, (int[]){2, 2}, 2));

    func0(346211, result);
    assert(issame(result, (int[]){3, 3}, 2));

    func0(-345821, result);
    assert(issame(result, (int[]){3, 3}, 2));

    func0(-2, result);
    assert(issame(result, (int[]){1, 0}, 2));

    func0(-45347, result);
    assert(issame(result, (int[]){2, 3}, 2));

    func0(0, result);
    assert(issame(result, (int[]){1, 0}, 2));

    return 0;
}
