#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

char **func0(const char *s, int n, int *returnSize) {
    const char *vowels = "aeiouAEIOU";
    char **out = NULL;
    int numc = 0, word_count = 0, begin = 0;
    size_t length = strlen(s);
    char *current = (char *)malloc(length + 1);

    for (int i = 0; i <= length; i++) {
        if (isspace(s[i]) || s[i] == '\0') {
            if (numc == n) {
                current[i - begin] = '\0';
                out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
                out[word_count] = (char *)malloc(strlen(current) + 1);
                strcpy(out[word_count], current);
                word_count++;
            }
            begin = i + 1;
            numc = 0;
        } else {
            current[i - begin] = s[i];
            if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
                numc++;
            }
        }
    }
    free(current);

    *returnSize = word_count;
    return out;
}


#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
char **func0(const char *s, int n, int *returnSize);

int issame(char **a, int aSize, char **b, int bSize) {
    if (aSize != bSize) return 0;
    for (int i = 0; i < aSize; i++) {
        if (strcmp(a[i], b[i]) != 0) return 0;
    }
    return 1;
}

void free_words(char **words, int count) {
    for (int i = 0; i < count; i++) {
        free(words[i]);
    }
    free(words);
}

int main() {
    int size;
    char **words;
    
    words = func0("Mary had a little lamb", 4, &size);
    char *expected1[] = {"little"};
    assert(issame(words, size, expected1, 1));
    free_words(words, size);

    words = func0("Mary had a little lamb", 3, &size);
    char *expected2[] = {"Mary", "lamb"};
    assert(issame(words, size, expected2, 2));
    free_words(words, size);

    words = func0("simple white space", 2, &size);
    assert(size == 0);
    free_words(words, size);

    words = func0("Hello world", 4, &size);
    char *expected3[] = {"world"};
    assert(issame(words, size, expected3, 1));
    free_words(words, size);

    words = func0("Uncle sam", 3, &size);
    char *expected4[] = {"Uncle"};
    assert(issame(words, size, expected4, 1));
    free_words(words, size);

    words = func0("", 4, &size);
    assert(size == 0);
    free_words(words, size);

    words = func0("a b c d e f", 1, &size);
    char *expected5[] = {"b", "c", "d", "f"};
    assert(issame(words, size, expected5, 4));
    free_words(words, size);

    return 0;
}
