#include <stdio.h>
#include <stdlib.h>

char *func0(int n) {
    int len = 2; 
    for (int i = 1; i <= n; ++i) {
        len += snprintf(NULL, 0, " %d", i);
    }

    char *out = malloc(len);
    if (!out) {
        return NULL;
    }
    
    char *ptr = out;
    ptr += sprintf(ptr, "0");
    for (int i = 1; i <= n; ++i) {
        ptr += sprintf(ptr, " %d", i);
    }
    return out;
}


#include <stdlib.h>
#include <assert.h>
#include <string.h>
char *func0(int n);

int main() {
    char *result;

    result = func0(0);
    assert(strcmp(result, "0") == 0);
    free(result);

    result = func0(3);
    assert(strcmp(result, "0 1 2 3") == 0);
    free(result);

    result = func0(10);
    assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
    free(result);

    return 0;
}
