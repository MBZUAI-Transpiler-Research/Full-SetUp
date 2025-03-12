#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

bool func0(const char *a, const char *b) {
    int len_a = strlen(a);
    int len_b = strlen(b);
    char *temp = (char *)malloc(2 * len_b + 1);

    for (int i = 0; i < len_b; i++) {
        strncpy(temp, b + i, len_b - i);
        strncpy(temp + len_b - i, b, i);
        temp[len_b] = '\0';
        if (strstr(a, temp)) {
            free(temp);
            return true;
        }
    }

    free(temp);
    return false;
}


#include <assert.h>
#include <stdbool.h>
bool func0(const char *a, const char *b);

int main() {
    assert(func0("xyzw", "xyw") == false);
    assert(func0("yello", "ell") == true);
    assert(func0("whattup", "ptut") == false);
    assert(func0("efef", "fee") == true);
    assert(func0("abab", "aabb") == false);
    assert(func0("winemtt", "tinem") == true);

    return 0;
}
