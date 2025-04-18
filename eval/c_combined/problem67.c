#include <stdio.h>
#include <string.h>

int func0(const char *s) {
    int sum = 0;
    for (int i = 0; s[i] != '\0'; i++)
        if (s[i] >= 'A' && s[i] <= 'Z')
            sum += s[i];
    return sum;
}


#include <assert.h>
int func0(const char *s);

int main() {
    assert(func0("") == 0);
    assert(func0("abAB") == 131);
    assert(func0("abcCd") == 67);
    assert(func0("helloE") == 69);
    assert(func0("woArBld") == 131);
    assert(func0("aAaaaXa") == 153);
    assert(func0(" How are yOu?") == 151);
    assert(func0("You arE Very Smart") == 327);

    return 0;
}
