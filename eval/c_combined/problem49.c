#include <stdio.h>
#include <string.h>
#include <stdbool.h>

bool func0(const char *text) {
    int len = strlen(text);
    for (int i = 0; i < len / 2; i++) {
        if (text[i] != text[len - 1 - i]) {
            return false;
        }
    }
    return true;
}


#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
bool func0(const char *text);

int main() {
    assert(func0("") == true);
    assert(func0("aba") == true);
    assert(func0("aaaaa") == true);
    assert(func0("zbcd") == false);
    assert(func0("xywyx") == true);
    assert(func0("xywyz") == false);
    assert(func0("xywzx") == false);

    return 0;
}
