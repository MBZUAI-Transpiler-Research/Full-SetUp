#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void func0(int *arr, int size, char ***out, int *out_size) {
    char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
    int i, j;

    for (i = 0; i < size - 1; i++) {
        for (j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    *out_size = 0;
    for (i = size - 1; i >= 0; i--) {
        if (arr[i] >= 1 && arr[i] <= 9) {
            (*out_size)++;
        }
    }

    *out = malloc(*out_size * sizeof(char *));

    for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
        if (arr[i] >= 1 && arr[i] <= 9) {
            (*out)[j++] = names[arr[i]];
        }
    }
}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
void func0(int *arr, int size, char ***out, int *out_size);

int issame(char **a, int a_size, char **b, int b_size) {
    if (a_size != b_size) return 0;
    for (int i = 0; i < a_size; i++) {
        if (strcmp(a[i], b[i]) != 0) return 0;
    }
    return 1;
}

int main() {
    char **out;
    int out_size;

    int test1[] = {2, 1, 1, 4, 5, 8, 2, 3};
    char *expected1[] = {"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"};
    func0(test1, 8, &out, &out_size);
    assert(issame(out, out_size, expected1, 8));
    free(out);

    int test2[] = {};
    func0(test2, 0, &out, &out_size);
    assert(issame(out, out_size, NULL, 0));
    free(out);

    int test3[] = {1, -1, 55};
    char *expected3[] = {"One"};
    func0(test3, 3, &out, &out_size);
    assert(issame(out, out_size, expected3, 1));
    free(out);

    int test4[] = {1, -1, 3, 2};
    char *expected4[] = {"Three", "Two", "One"};
    func0(test4, 4, &out, &out_size);
    assert(issame(out, out_size, expected4, 3));
    free(out);

    int test5[] = {9, 4, 8};
    char *expected5[] = {"Nine", "Eight", "Four"};
    func0(test5, 3, &out, &out_size);
    assert(issame(out, out_size, expected5, 3));
    free(out);

    return 0;
}
