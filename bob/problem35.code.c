#include <stdio.h>
#include <stdlib.h>

int *func0(int *l, int size, int *out_size) {
    int *out = malloc(size * sizeof(int));
    int found, out_count = 0, i, j;
    for (i = 0; i < size; i++) {
        found = 0;
        for (j = 0; j < out_count; j++) {
            if (l[i] == out[j]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            out[out_count++] = l[i];
        }
    }

    for (i = 0; i < out_count - 1; i++) {
        for (j = i + 1; j < out_count; j++) {
            if (out[i] > out[j]) {
                int temp = out[i];
                out[i] = out[j];
                out[j] = temp;
            }
        }
    }

    *out_size = out_count;
    return out;
}


#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
int *func0(int *l, int size, int *out_size);

int main() {
    int test_array[] = {5, 3, 5, 2, 3, 3, 9, 0, 123};
    int expected_array[] = {0, 2, 3, 5, 9, 123};
    int unique_size;
    int *unique_array = func0(test_array, sizeof(test_array) / sizeof(test_array[0]), &unique_size);

    assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
    for (int i = 0; i < unique_size; i++) {
        assert(unique_array[i] == expected_array[i]);
    }

    free(unique_array);
    printf("All tests passed!\n");

    return 0;
}
