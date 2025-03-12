#include <stdio.h>
#include <string.h>
#include <ctype.h>

int func0(const char *s) {
    const char *vowels = "aeiouAEIOU";
    int count = 0;
    int length = strlen(s);
    
    for (int i = 0; i < length; i++) {
        if (strchr(vowels, s[i])) {
            count++;
        }
    }
    
    if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
        count++;
    }
    
    return count;
}


#include <assert.h>
int func0(const char *s);

int main() {
    assert(func0("abcde") == 2);
    assert(func0("Alone") == 3);
    assert(func0("key") == 2);
    assert(func0("bye") == 1);
    assert(func0("keY") == 2);
    assert(func0("bYe") == 1);
    assert(func0("ACEDY") == 3);

    return 0;
}
