#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *func0(const char *a, const char *b) {
    int len_a = strlen(a);
    int len_b = strlen(b);
    int min_len = len_a < len_b ? len_a : len_b;
    char *output = malloc((min_len + 1) * sizeof(char));
    if (!output) return NULL;

    for (int i = 0; i < min_len; i++) {
        output[i] = (a[i] == b[i]) ? '0' : '1';
    }
    output[min_len] = '\0';
    return output;
}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
char *func0(const char *a, const char *b);

int main() {
    char *result;

    result = func0("111000", "101010");
    assert(strcmp(result, "010010") == 0);
    free(result);

    result = func0("1", "1");
    assert(strcmp(result, "0") == 0);
    free(result);

    result = func0("0101", "0000");
    assert(strcmp(result, "0101") == 0);
    free(result);

    return 0;
}
