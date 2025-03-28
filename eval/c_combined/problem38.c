#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void func0(float *l, int size, float *out) {
    float *even = malloc((size / 2 + 1) * sizeof(float));
    int i, j, even_count = 0;

    for (i = 0; i < size; i += 2) {
        even[even_count++] = l[i];
    }

    for (i = 0; i < even_count - 1; i++) {
        for (j = 0; j < even_count - i - 1; j++) {
            if (even[j] > even[j + 1]) {
                float temp = even[j];
                even[j] = even[j + 1];
                even[j + 1] = temp;
            }
        }
    }

    // Merging even-indexed sorted and odd-indexed as they are
    for (i = 0; i < size; i++) {
        if (i % 2 == 0) {
            out[i] = even[i / 2];
        } else {
            out[i] = l[i];
        }
    }

    free(even);
}


#include <stdio.h>
#include <assert.h>
#include <math.h>
void func0(float *l, int size, float *out);

int issame(float *a, float *b, int size) {
    for (int i = 0; i < size; i++) {
        if (fabs(a[i] - b[i]) > 1e-4) {
            return 0;
        }
    }
    return 1;
}

int main() {
    float test1[] = {1, 2, 3};
    float result1[3];
    func0(test1, 3, result1);
    float expected1[] = {1, 2, 3};
    assert(issame(result1, expected1, 3));

    float test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
    float result2[11];
    func0(test2, 11, result2);
    float expected2[] = {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123};
    assert(issame(result2, expected2, 11));

    float test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
    float result3[10];
    func0(test3, 10, result3);
    float expected3[] = {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10};
    assert(issame(result3, expected3, 10));

    return 0;
}
