#include <stdio.h>
#include <string.h>

char *func0(const char *word) {
    static char out[2] = {0};
    const char *vowels = "AEIOUaeiou";
    size_t len = strlen(word);
    
    for (int i = len - 2; i >= 1; i--) {
        if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
            out[0] = word[i];
            return out;
        }
    }
    out[0] = '\0';
    return out;
}


#include <stdio.h>
#include <assert.h>
#include <string.h>
char *func0(const char *word);

int main() {
    assert(strcmp(func0("yogurt"), "u") == 0);
    assert(strcmp(func0("full"), "u") == 0);
    assert(strcmp(func0("easy"), "") == 0);
    assert(strcmp(func0("eAsy"), "") == 0);
    assert(strcmp(func0("ali"), "") == 0);
    assert(strcmp(func0("bad"), "a") == 0);
    assert(strcmp(func0("most"), "o") == 0);
    assert(strcmp(func0("ab"), "") == 0);
    assert(strcmp(func0("ba"), "") == 0);
    assert(strcmp(func0("quick"), "") == 0);
    assert(strcmp(func0("anime"), "i") == 0);
    assert(strcmp(func0("Asia"), "") == 0);
    assert(strcmp(func0("Above"), "o") == 0);

    return 0;
}
