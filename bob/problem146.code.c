#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int* func0(int nums[], int size) {
    int* sumdigit = (int*)malloc(size * sizeof(int));
    for (int i = 0; i < size; i++) {
        char w[12]; // Assuming the integer won't exceed the length of an int in string form.
        sprintf(w, "%d", abs(nums[i]));
        int sum = 0, length = strlen(w);
        for (int j = 1; j < length; j++)
            sum += w[j] - '0';
        if (nums[i] > 0) sum += w[0] - '0';
        else sum -= w[0] - '0';
        sumdigit[i] = sum;
    }
    int m;
    for (int i = 0; i < size; i++)
        for (int j = 1; j < size; j++)
            if (sumdigit[j - 1] > sumdigit[j]) {
                m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
                m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
            }
    
    free(sumdigit);
    return nums;
}


#include <stdio.h>
#include <assert.h>
int* func0(int nums[], int size);

int issame(int* a, int* b, int size_a, int size_b) {
    if (size_a != size_b) return 0;
    for (int i = 0; i < size_a; i++) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

int main() {
    int test1[] = {1, 11, -1, -11, -12};
    int expected1[] = {-1, -11, 1, -12, 11};
    assert(issame(func0(test1, 5), expected1, 5, 5));

    int test2[] = {1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46};
    int expected2[] = {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457};
    assert(issame(func0(test2, 15), expected2, 15, 15));

    int test3[] = {};
    int expected3[] = {};
    assert(issame(func0(test3, 0), expected3, 0, 0));

    int test4[] = {1, -11, -32, 43, 54, -98, 2, -3};
    int expected4[] = {-3, -32, -98, -11, 1, 2, 43, 54};
    assert(issame(func0(test4, 8), expected4, 8, 8));

    int test5[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    int expected5[] = {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9};
    assert(issame(func0(test5, 11), expected5, 11, 11));

    int test6[] = {0, 6, 6, -76, -21, 23, 4};
    int expected6[] = {-76, -21, 0, 4, 23, 6, 6};
    assert(issame(func0(test6, 7), expected6, 7, 7));

    printf("All tests passed!\n");

    return 0;
}
