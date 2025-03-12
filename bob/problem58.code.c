#include <stdio.h>
#include <stdbool.h>

bool func0(float *l, int size) {
    int incr, decr;
    incr = decr = 0;
    
    for (int i = 1; i < size; i++) {
        if (l[i] > l[i - 1]) incr = 1;
        if (l[i] < l[i - 1]) decr = 1;
    }
    if (incr + decr == 2) return false;
    return true;
}


#include <assert.h>
#include <stdbool.h>
bool func0(float *l, int size);

int main() {
    float list1[] = {1, 2, 4, 10};
    float list2[] = {1, 2, 4, 20};
    float list3[] = {1, 20, 4, 10};
    float list4[] = {4, 1, 0, -10};
    float list5[] = {4, 1, 1, 0};
    float list6[] = {1, 2, 3, 2, 5, 60};
    float list7[] = {1, 2, 3, 4, 5, 60};
    float list8[] = {9, 9, 9, 9};

    assert(func0(list1, 4) == true);
    assert(func0(list2, 4) == true);
    assert(func0(list3, 4) == false);
    assert(func0(list4, 4) == true);
    assert(func0(list5, 4) == true);
    assert(func0(list6, 6) == false);
    assert(func0(list7, 6) == true);
    assert(func0(list8, 4) == true);

    return 0;
}
