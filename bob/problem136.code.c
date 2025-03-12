#include <stdio.h>

int func0(int *arr, int size) {
    int max = -1;
    for (int i = 1; i < size; ++i) {
        if (arr[i] < arr[i - 1]) max = i;
    }
    return max;
}


#include <assert.h>
#include <stddef.h>

int func0(int *arr, int size);

int main() {
    int arr1[] = {1, 2, 4, 3, 5};
    assert(func0(arr1, 5) == 3);

    int arr2[] = {1, 2, 4, 5};
    assert(func0(arr2, 4) == -1);

    int arr3[] = {1, 4, 2, 5, 6, 7, 8, 9, 10};
    assert(func0(arr3, 9) == 2);

    int arr4[] = {4, 8, 5, 7, 3};
    assert(func0(arr4, 5) == 4);

    assert(func0(NULL, 0) == -1);

    return 0;
}
