#include <stdio.h>

const char* func0(int interval1_start, int interval1_end, int interval2_start, int interval2_end) {
    int inter1, inter2, l, i;
    inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
    inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
    l = inter2 - inter1;
    
    if (l < 2) return "NO";
    
    for (i = 2; i * i <= l; i++)
        if (l % i == 0) return "NO";
    
    return "YES";
}


#include <stdio.h>
#include <assert.h>
#include <string.h>
const char* func0(int interval1_start, int interval1_end, int interval2_start, int interval2_end);

int main() {
    assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
    assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
    assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
    assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
    assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
    assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
    assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
    assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
    
    return 0;
}
