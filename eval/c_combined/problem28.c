#include <stdio.h>
#include <string.h>

void func0(const char* str, char* out) {
    int length = strlen(str);
    for (int i = 0; i < length; i++) {
        char w = str[i];
        if (w >= 'a' && w <= 'z') {
            w -= 32;
        } else if (w >= 'A' && w <= 'Z') {
            w += 32;
        }
        out[i] = w;
    }
    out[length] = '\0';
}


#include <assert.h>
#include <string.h>
void func0(const char* str, char* out);

int main() {
    char result[100]; // Buffer large enough for test cases

    func0("", result);
    assert(strcmp(result, "") == 0);

    func0("Hello!", result);
    assert(strcmp(result, "hELLO!") == 0);

    func0("These violent delights have violent ends", result);
    assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);

    return 0;
}
