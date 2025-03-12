#include <stdio.h>
#include <stdlib.h>

void func0(int *arr, int size) {
    int count_ones, x, y, temp;
    for (int i = 0; i < size; i++) {
        for (int j = i + 1; j < size; j++) {
            count_ones = 0;
            x = arr[i];
            y = arr[j];
            while (x > 0) {
                count_ones += x & 1;
                x >>= 1;
            }
            x = count_ones;
            count_ones = 0;
            while (y > 0) {
                count_ones += y & 1;
                y >>= 1;
            }
            y = count_ones;
            if (y < x || (y == x && arr[j] < arr[i])) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}


#include <stdio.h>
#include <assert.h>
void func0(int *arr, int size);

int issame(int *a, int size_a, int *b, int size_b) {
    if (size_a != size_b) return 0;
    for (int i = 0; i < size_a; i++) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

int main() {
    int test1[] = {1, 5, 2, 3, 4};
    int expected1[] = {1, 2, 4, 3, 5};
    func0(test1, 5);
    assert(issame(test1, 5, expected1, 5));

    int test3[] = {1, 0, 2, 3, 4};
    int expected3[] = {0, 1, 2, 4, 3};
    func0(test3, 5);
    assert(issame(test3, 5, expected3, 5));

    int test4[] = {2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4};
    int expected4[] = {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77};
    func0(test4, 11);
    assert(issame(test4, 11, expected4, 11));

    int test5[] = {3, 6, 44, 12, 32, 5};
    int expected5[] = {32, 3, 5, 6, 12, 44};
    func0(test5, 6);
    assert(issame(test5, 6, expected5, 6));

    int test6[] = {2, 4, 8, 16, 32};
    int expected6[] = {2, 4, 8, 16, 32};
    func0(test6, 5);
    assert(issame(test6, 5, expected6, 5));

    printf("All tests passed!\n");
    return 0;
}
