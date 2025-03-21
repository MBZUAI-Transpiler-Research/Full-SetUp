#include <stdio.h>
#include <stdlib.h>

void func0(int n, int *out, int *size) {
    int capacity = 10;
    *size = 1;
    out[0] = 1;
    
    while (n != 1) {
        if (n % 2 == 1) {
            if (*size >= capacity) {
                capacity *= 2;
                out = (int*)realloc(out, capacity * sizeof(int));
            }
            out[(*size)++] = n;
            n = n * 3 + 1;
        } else {
            n = n / 2;
        }
    }

    for (int i = 1; i < *size; i++) {
        int key = out[i];
        int j = i - 1;

        while (j >= 0 && out[j] > key) {
            out[j + 1] = out[j];
            j = j - 1;
        }
        out[j + 1] = key;
    }
}


#include <assert.h>
#include <stdlib.h>
void func0(int n, int *out, int *size);

int issame(int *a, int size_a, int *b, int size_b) {
    if (size_a != size_b) return 0;
    for (int i = 0; i < size_a; i++) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

int main() {
    int size;
    int *result;

    // Test 1
    int expected1[] = {1, 5, 7, 11, 13, 17};
    result = (int*)malloc(100 * sizeof(int));
    func0(14, result, &size);
    assert(issame(result, size, expected1, 6));
    free(result);

    // Test 2
    int expected2[] = {1, 5};
    result = (int*)malloc(100 * sizeof(int));
    func0(5, result, &size);
    assert(issame(result, size, expected2, 2));
    free(result);

    // Test 3
    int expected3[] = {1, 3, 5};
    result = (int*)malloc(100 * sizeof(int));
    func0(12, result, &size);
    assert(issame(result, size, expected3, 3));
    free(result);

    // Test 4
    int expected4[] = {1};
    result = (int*)malloc(100 * sizeof(int));
    func0(1, result, &size);
    assert(issame(result, size, expected4, 1));
    free(result);

    return 0;
}
