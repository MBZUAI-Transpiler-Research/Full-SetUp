#include <stdio.h>
#include <string.h>

int func0(const char *str) {
    int count = 0, maxcount = 0;
    for (int i = 0; i < strlen(str); i++) {
        if (str[i] == '[') count += 1;
        if (str[i] == ']') count -= 1;
        if (count < 0) count = 0;
        if (count > maxcount) maxcount = count;
        if (count <= maxcount - 2) return 1;
    }
    return 0;
}


#include <assert.h>

int func0(const char *str);

int main() {
    assert(func0("[[]]") == 1);
    assert(func0("[]]]]]]][[[[[]") == 0);
    assert(func0("[][]") == 0);
    assert(func0("[]") == 0);
    assert(func0("[[[[]]]]") == 1);
    assert(func0("[]]]]]]]]]]") == 0);
    assert(func0("[][][[]]") == 1);
    assert(func0("[[]") == 0);
    assert(func0("[]]") == 0);
    assert(func0("[[]][[") == 1);
    assert(func0("[[][]]") == 1);
    assert(func0("") == 0);
    assert(func0("[[[[[[[[") == 0);
    assert(func0("]]]]]]]]") == 0);

    return 0;
}
