#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool func0(const char *brackets) {
    int level = 0;
    for (int i = 0; i < strlen(brackets); i++) {
        if (brackets[i] == '(') level += 1;
        if (brackets[i] == ')') level -= 1;
        if (level < 0) return false;
    }
    return level == 0;
}


#include <assert.h>
#include <stdbool.h>
bool func0(const char *brackets);

int main() {
    assert(func0("()"));
    assert(func0("(()())"));
    assert(func0("()()(()())()"));
    assert(func0("()()((()()())())(()()(()))"));
    assert(!func0("((()())))"));
    assert(!func0(")(()"));
    assert(!func0("("));
    assert(!func0("(((("));
    assert(!func0(")"));
    assert(!func0("(()"));
    assert(!func0("()()(()())())(()"));
    assert(!func0("()()(()())()))()"));

    return 0;
}
