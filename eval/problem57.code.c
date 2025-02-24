#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool func0(const char *brackets) {
    int level = 0;
    int i = 0;
    while (brackets[i]) {
        if (brackets[i] == '<') level++;
        if (brackets[i] == '>') level--;
        if (level < 0) return false;
        i++;
    }
    if (level != 0) return false;
    return true;
}


#include <assert.h>
#include <stdbool.h>
bool func0(const char *brackets);

int main() {
    assert(func0("<>"));
    assert(func0("<<><>>"));
    assert(func0("<><><<><>><>"));
    assert(func0("<><><<<><><>><>><<><><<>>>"));
    assert(!func0("<<<><>>>>"));
    assert(!func0("><<>"));
    assert(!func0("<"));
    assert(!func0("<<<<"));
    assert(!func0(">"));
    assert(!func0("<<>"));
    assert(!func0("<><><<><>><>><<>"));
    assert(!func0("<><><<><>><>>><>"));

    return 0;
}
