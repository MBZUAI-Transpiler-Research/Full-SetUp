#include <stdio.h>
#include <stdlib.h>

char* func0(int N) {
    char str[6];
    sprintf(str, "%d", N);
    int sum = 0;
    for (int i = 0; str[i] != '\0'; i++)
        sum += str[i] - '0';

    char* bi = malloc(33);
    int index = 0;
    if (sum == 0) {
        bi[index++] = '0';
    } else {
        while (sum > 0) {
            bi[index++] = (sum % 2) + '0';
            sum /= 2;
        }
    }
    bi[index] = '\0';

    for (int i = 0; i < index / 2; i++) {
        char temp = bi[i];
        bi[i] = bi[index - i - 1];
        bi[index - i - 1] = temp;
    }

    return bi;
}


#include <stdlib.h>
#include <assert.h>
#include <string.h>
char* func0(int N);

int main() {
    char* result;

    result = func0(1000);
    assert(strcmp(result, "1") == 0);
    free(result);

    result = func0(150);
    assert(strcmp(result, "110") == 0);
    free(result);

    result = func0(147);
    assert(strcmp(result, "1100") == 0);
    free(result);

    result = func0(333);
    assert(strcmp(result, "1001") == 0);
    free(result);

    result = func0(963);
    assert(strcmp(result, "10010") == 0);
    free(result);

    return 0;
}
