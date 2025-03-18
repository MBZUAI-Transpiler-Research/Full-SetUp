#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int* func0(const char* paren_string, int* returnSize) {
    int* all_levels = NULL;
    int level = 0, max_level = 0, i = 0, count = 0;
    char chr;
    for (i = 0; paren_string[i] != '\0'; i++) {
        chr = paren_string[i];
        if (chr == '(') {
            level += 1;
            if (level > max_level) max_level = level;
        } else if (chr == ')') {
            level -= 1;
            if (level == 0) {
                all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
                all_levels[count++] = max_level;
                max_level = 0;
            }
        }
    }
    *returnSize = count;
    return all_levels;
}


#include <stdlib.h>
#include <assert.h>
int* func0(const char* paren_string, int* returnSize);

int issame(const int* a, const int* b, int size_a, int size_b) {
    if (size_a != size_b) return 0;
    for (int i = 0; i < size_a; i++) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

int main() {
    int returnSize;
    int* result;

    result = func0("(()()) ((())) () ((())()())", &returnSize);
    assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
    free(result);

    result = func0("() (()) ((())) (((())))", &returnSize);
    assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
    free(result);

    result = func0("(()(())((())))", &returnSize);
    assert(issame(result, (const int[]){4}, returnSize, 1));
    free(result);
    
    return 0;
}
