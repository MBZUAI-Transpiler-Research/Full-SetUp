#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* func0(int x, int shift) {
    static char xs[50];
    sprintf(xs, "%d", x);
    int len = strlen(xs);

    if (len < shift) {
        for (int i = 0; i < len / 2; i++) {
            char temp = xs[i];
            xs[i] = xs[len - 1 - i];
            xs[len - 1 - i] = temp;
        }
    } else {
        char temp[50];
        strcpy(temp, xs + len - shift);
        temp[shift] = '\0';
        strncat(temp, xs, len - shift);
        strcpy(xs, temp);
    }

    return xs;
}


#include <assert.h>
#include <string.h>
char* func0(int x, int shift);

int main() {
    assert(strcmp(func0(100, 2), "001") == 0);
    assert(strcmp(func0(12, 2), "12") == 0);
    assert(strcmp(func0(97, 8), "79") == 0);
    assert(strcmp(func0(12, 1), "21") == 0);
    assert(strcmp(func0(11, 101), "11") == 0);

    return 0;
}
