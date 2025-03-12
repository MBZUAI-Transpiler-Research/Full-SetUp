#include <stdio.h>
#include <string.h>

char *func0(char **strings, int count) {
    char *out = "";
    int longest_length = 0;
    for (int i = 0; i < count; i++) {
        int current_length = strlen(strings[i]);
        if (current_length > longest_length) {
            out = strings[i];
            longest_length = current_length;
        }
    }
    return out;
}


#include <stdio.h>
#include <string.h>
#include <assert.h>
char *func0(char **strings, int count);

int main() {
    char *empty_array[] = {""};
    char *array1[] = {"x", "y", "z"};
    char *array2[] = {"x", "yyy", "zzzz", "www", "kkkk", "abc"};

    assert(strcmp(func0(empty_array, 0), "") == 0);
    assert(strcmp(func0(array1, 3), "x") == 0);
    assert(strcmp(func0(array2, 6), "zzzz") == 0);

    return 0;
}
