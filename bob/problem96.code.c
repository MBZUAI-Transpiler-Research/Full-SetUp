#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int func0(char* dict[][2], int size) {
    if (size == 0) return 0;
    int has_lower = 0, has_upper = 0;
    for (int i = 0; i < size; ++i) {
        char* key = dict[i][0];
        for (int j = 0; key[j]; ++j) {
            if (!isalpha((unsigned char)key[j])) return 0;
            if (isupper((unsigned char)key[j])) has_upper = 1;
            if (islower((unsigned char)key[j])) has_lower = 1;
            if (has_upper + has_lower == 2) return 0;
        }
    }
    return 1;
}


#include <assert.h>
#include <stddef.h>
int func0(char* dict[][2], int size);

int main() {
    char* test1[][2] = {{"p","pineapple"}, {"b","banana"}};
    assert(func0(test1, 2) == 1);

    char* test2[][2] = {{"p","pineapple"}, {"A","banana"}, {"B","banana"}};
    assert(func0(test2, 3) == 0);

    char* test3[][2] = {{"p","pineapple"}, {"5","banana"}, {"a","apple"}};
    assert(func0(test3, 3) == 0);

    char* test4[][2] = {{"Name","John"}, {"Age","36"}, {"City","Houston"}};
    assert(func0(test4, 3) == 0);

    char* test5[][2] = {{"STATE","NC"}, {"ZIP","12345"}};
    assert(func0(test5, 2) == 1);

    char* test6[][2] = {{"fruit","Orange"}, {"taste","Sweet"}};
    assert(func0(test6, 2) == 1);

    assert(func0(NULL, 0) == 0);

    return 0;
}
