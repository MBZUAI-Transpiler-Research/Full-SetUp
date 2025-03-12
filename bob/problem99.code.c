#include <stdio.h>
#include <string.h>

int func0(const char *s) {
    const char *uvowel = "AEIOU";
    int count = 0;
    for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
        if (strchr(uvowel, s[i * 2]) != NULL) {
            count += 1;
        }
    }
    return count;
}


#include <assert.h>
int func0(const char *s);

int main() {
    assert(func0("aBCdEf") == 1);
    assert(func0("abcdefg") == 0);
    assert(func0("dBBE") == 0);
    assert(func0("B") == 0);
    assert(func0("U") == 1);
    assert(func0("") == 0);
    assert(func0("EEEE") == 2);

    return 0;
}
