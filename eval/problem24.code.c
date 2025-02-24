#include <stdio.h>

int func0(const char *str) {
    int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}


#include <assert.h>
int func0(const char *str);

int main() {
    assert(func0("") == 0);
    assert(func0("x") == 1);
    assert(func0("asdasnakj") == 9);

    return 0;
}
