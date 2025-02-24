#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char** func0(char **lst, int lst_size, int *return_size) {
    int i, j;
    char *temp;

    *return_size = 0;
    for (i = 0; i < lst_size; ++i) {
        if (strlen(lst[i]) % 2 == 0) {
            lst[*return_size] = lst[i];
            (*return_size)++;
        }
    }

    for (i = 0; i < *return_size - 1; ++i) {
        for (j = 0; j < *return_size - i - 1; ++j) {
            size_t len_j = strlen(lst[j]);
            size_t len_j1 = strlen(lst[j + 1]);
            if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
                temp = lst[j];
                lst[j] = lst[j + 1];
                lst[j + 1] = temp;
            }
        }
    }

    char **out = malloc(*return_size * sizeof(char *));
    for (i = 0; i < *return_size; ++i) {
        out[i] = lst[i];
    }

    return out;
}


#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char** func0(char **lst, int lst_size, int *return_size);

int issame(char **a, char **b, int a_size, int b_size) {
    if (a_size != b_size) return 0;
    for (int i = 0; i < a_size; i++) {
        if (strcmp(a[i], b[i]) != 0) return 0;
    }
    return 1;
}

int main() {
    int size;
    char **result;

    char *test1[] = {"aa", "a", "aaa"};
    char *expected1[] = {"aa"};
    result = func0(test1, 3, &size);
    assert(issame(result, expected1, size, 1));
    free(result);

    char *test2[] = {"school", "AI", "asdf", "b"};
    char *expected2[] = {"AI", "asdf", "school"};
    result = func0(test2, 4, &size);
    assert(issame(result, expected2, size, 3));
    free(result);

    char *test3[] = {"d", "b", "c", "a"};
    result = func0(test3, 4, &size);
    assert(size == 0);
    free(result);

    char *test4[] = {"d", "dcba", "abcd", "a"};
    char *expected4[] = {"abcd", "dcba"};
    result = func0(test4, 4, &size);
    assert(issame(result, expected4, size, 2));
    free(result);

    char *test5[] = {"AI", "ai", "au"};
    char *expected5[] = {"AI", "ai", "au"};
    result = func0(test5, 3, &size);
    assert(issame(result, expected5, size, 3));
    free(result);

    char *test6[] = {"a", "b", "b", "c", "c", "a"};
    result = func0(test6, 6, &size);
    assert(size == 0);
    free(result);

    char *test7[] = {"aaaa", "bbbb", "dd", "cc"};
    char *expected7[] = {"cc", "dd", "aaaa", "bbbb"};
    result = func0(test7, 4, &size);
    assert(issame(result, expected7, size, 4));
    free(result);

    printf("All tests passed!\n");

    return 0;
}
