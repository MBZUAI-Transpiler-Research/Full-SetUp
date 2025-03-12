#include <stdio.h>
#include <string.h>

void func0(char *s, int encode) {
    int l = strlen(s);
    int num = (l + 2) / 3;
    char x[4];

    for (int i = 0; i < num; ++i) {
        int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
        strncpy(x, s + i * 3, len);
        x[len] = '\0';

        if (len == 3) {
            if (encode) {
                char temp = x[2];
                x[2] = x[1];
                x[1] = x[0];
                x[0] = temp;
            } else {
                char temp = x[0];
                x[0] = x[1];
                x[1] = x[2];
                x[2] = temp;
            }
        }
        strncpy(s + i * 3, x, len);
    }
}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <time.h>
void func0(char *s, int encode);

int main(){
    srand((unsigned int)time(NULL));
    char str[22], temp[22], decoded_str[22];

    for (int i = 0; i < 100; i++) {
        int l = 10 + rand() % 11;
        for (int j = 0; j < l; j++) {
            str[j] = 'a' + rand() % 26;
        }
        str[l] = '\0';
        strcpy(temp, str);

        func0(temp, 1); // Encode
        strcpy(decoded_str, temp);
        func0(decoded_str, 0); // Decode

        assert(strcmp(decoded_str, str) == 0);
    }

    return 0;
}
