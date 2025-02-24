#include <stdio.h>
#include <stdbool.h>

bool func0(int *arr, int size) {
    int num = 0;
    if (size == 0) return true;
    for (int i = 1; i < size; i++)
        if (arr[i] < arr[i - 1]) num += 1;
    if (arr[size - 1] > arr[0]) num += 1;
    if (num < 2) return true;
    return false;
}


#include <assert.h>
#include <stdbool.h>
bool func0(int *arr, int size);

int main() {
    assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
    assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
    assert(func0((int[]){4, 3, 1, 2}, 4) == false);
    assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
    assert(func0((int[]){}, 0) == true);

    return 0;
}
