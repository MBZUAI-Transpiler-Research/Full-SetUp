#include <stdio.h>
#include <string.h>
#include <ctype.h>

char* func0(char *s){
    int nletter = 0;
    int length = strlen(s);
    for (int i = 0; i < length; i++) {
        if (isalpha((unsigned char)s[i])) {
            if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
            else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
        } else {
            nletter += 1;
        }
    }
    if (nletter == length) {
        for (int i = 0; i < length / 2; i++) {
            char temp = s[i];
            s[i] = s[length - i - 1];
            s[length - i - 1] = temp;
        }
    }
    return s;
}


#include <assert.h>
#include <string.h>
char* func0(char *s);

int main(){
    char test1[] = "AsDf";
    assert(strcmp(func0(test1), "aSdF") == 0);

    char test2[] = "1234";
    assert(strcmp(func0(test2), "4321") == 0);

    char test3[] = "ab";
    assert(strcmp(func0(test3), "AB") == 0);

    char test4[] = "#a@C";
    assert(strcmp(func0(test4), "#A@c") == 0);

    char test5[] = "#AsdfW^45";
    assert(strcmp(func0(test5), "#aSDFw^45") == 0);

    char test6[] = "#6@2";
    assert(strcmp(func0(test6), "2@6#") == 0);

    char test7[] = "#$a^D";
    assert(strcmp(func0(test7), "#$A^d") == 0);

    char test8[] = "#ccc";
    assert(strcmp(func0(test8), "#CCC") == 0);

    return 0;
}
