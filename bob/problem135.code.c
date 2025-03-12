#include <stdio.h>
#include <string.h>
#include <ctype.h>

int func0(const char *txt) {
    int len = strlen(txt);
    if (len == 0) return 0;
    char last_char = txt[len - 1];
    if (!isalpha((unsigned char)last_char)) return 0;
    if (len == 1) return 1;
    char second_last_char = txt[len - 2];
    if (isalpha((unsigned char)second_last_char)) return 0;
    return 1;
}


#include <assert.h>
int func0(const char *txt);

int main() {
    assert(func0("apple") == 0);
    assert(func0("apple pi e") == 1);
    assert(func0("eeeee") == 0);
    assert(func0("A") == 1);
    assert(func0("Pumpkin pie ") == 0);
    assert(func0("Pumpkin pie 1") == 0);
    assert(func0("") == 0);
    assert(func0("eeeee e ") == 0);
    assert(func0("apple pie") == 0);
    assert(func0("apple pi e ") == 0);

    return 0;
}