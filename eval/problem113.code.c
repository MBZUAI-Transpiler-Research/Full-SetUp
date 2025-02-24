#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

void func0(const char *s, const char *c, char *result, char *palindrome) {
    int len = strlen(s);
    char *n = malloc((len + 1) * sizeof(char));
    int ni = 0;
    for (int i = 0; s[i] != '\0'; i++) {
        const char *temp = c;
        bool found = false;
        while (*temp != '\0') {
            if (s[i] == *temp) {
                found = true;
                break;
            }
            temp++;
        }
        if (!found) {
            n[ni++] = s[i];
        }
    }
    n[ni] = '\0';

    int n_len = strlen(n);
    bool is_palindrome = true;
    for (int i = 0; i < n_len / 2; i++) {
        if (n[i] != n[n_len - 1 - i]) {
            is_palindrome = false;
            break;
        }
    }

    strcpy(result, n);
    strcpy(palindrome, is_palindrome ? "True" : "False");

    free(n);
}


#include <assert.h>
#include <string.h>
void func0(const char *s, const char *c, char *result, char *palindrome);

int main() {
    char result[100];
    char palindrome[6];

    func0("abcde", "ae", result, palindrome);
    assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);

    func0("abcdef", "b", result, palindrome);
    assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);

    func0("abcdedcba", "ab", result, palindrome);
    assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);

    func0("dwik", "w", result, palindrome);
    assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);

    func0("a", "a", result, palindrome);
    assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);

    func0("abcdedcba", "", result, palindrome);
    assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);

    func0("abcdedcba", "v", result, palindrome);
    assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);

    func0("vabba", "v", result, palindrome);
    assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);

    func0("mamma", "mia", result, palindrome);
    assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);

    return 0;
}
