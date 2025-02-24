#include <stdio.h>
#include <stdlib.h>

void func0(int *l, int size, int *out) {
    int *third = malloc((size / 3 + 1) * sizeof(int));
    int i, k = 0, third_size = 0;

    for (i = 0; i * 3 < size; i++) {
        third[i] = l[i * 3];
        third_size++;
    }

    for (i = 0; i < third_size - 1; i++) {
        int min_idx = i;
        for (k = i + 1; k < third_size; k++) {
            if (third[k] < third[min_idx])
                min_idx = k;
        }
        if (min_idx != i) {
            int temp = third[i];
            third[i] = third[min_idx];
            third[min_idx] = temp;
        }
    }

    for (i = 0; i < size; i++) {
        if (i % 3 == 0) {
            out[i] = third[i / 3];
        } else {
            out[i] = l[i];
        }
    }

    free(third);
}


#include <stdio.h>
#include <assert.h>
void func0(int *l, int size, int *out);

int issame(int *a, int *b, int size) {
    for (int i = 0; i < size; i++) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

int main() {
    int test1[] = {1, 2, 3};
    int result1[3];
    func0(test1, 3, result1);
    assert(issame(result1, result1, 3));

    int test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
    int result2[11];
    func0(test2, 11, result2);
    assert(issame(result2, result2, 11));

    int test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
    int result3[10];
    func0(test3, 10, result3);
    assert(issame(result3, result3, 10));

    int test4[] = {5, 6, 3, 4, 8, 9, 2};
    int correct4[] = {2, 6, 3, 4, 8, 9, 5};
    int result4[7];
    func0(test4, 7, result4);
    assert(issame(result4, correct4, 7));

    int test5[] = {5, 8, 3, 4, 6, 9, 2};
    int correct5[] = {2, 8, 3, 4, 6, 9, 5};
    int result5[7];
    func0(test5, 7, result5);
    assert(issame(result5, correct5, 7));

    int test6[] = {5, 6, 9, 4, 8, 3, 2};
    int correct6[] = {2, 6, 9, 4, 8, 3, 5};
    int result6[7];
    func0(test6, 7, result6);
    assert(issame(result6, correct6, 7));

    int test7[] = {5, 6, 3, 4, 8, 9, 2, 1};
    int correct7[] = {2, 6, 3, 4, 8, 9, 5, 1};
    int result7[8];
    func0(test7, 8, result7);
    assert(issame(result7, correct7, 8));

    printf("All tests passed!\n");
    return 0;
}
