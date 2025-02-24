#include <stdio.h>
#include <string.h>

void func0(int number, char *result) {
    const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
    const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    int pos = 0;
    result[0] = '\0';

    while(number > 0) {
        while (number >= num[pos]) {
            strcat(result, rep[pos]);
            number -= num[pos];
        }
        if (number > 0) pos++;
    }
}


#include <assert.h>
#include <string.h>
void func0(int number, char *result);

int main() {
    char result[64]; // Buffer large enough for all Roman numeral representations of numbers 1-1000

    func0(19, result);
    assert(strcmp(result, "xix") == 0);

    func0(152, result);
    assert(strcmp(result, "clii") == 0);

    func0(251, result);
    assert(strcmp(result, "ccli") == 0);

    func0(426, result);
    assert(strcmp(result, "cdxxvi") == 0);

    func0(500, result);
    assert(strcmp(result, "d") == 0);

    func0(1, result);
    assert(strcmp(result, "i") == 0);

    func0(4, result);
    assert(strcmp(result, "iv") == 0);

    func0(43, result);
    assert(strcmp(result, "xliii") == 0);

    func0(90, result);
    assert(strcmp(result, "xc") == 0);

    func0(94, result);
    assert(strcmp(result, "xciv") == 0);

    func0(532, result);
    assert(strcmp(result, "dxxxii") == 0);

    func0(900, result);
    assert(strcmp(result, "cm") == 0);

    func0(994, result);
    assert(strcmp(result, "cmxciv") == 0);

    func0(1000, result);
    assert(strcmp(result, "m") == 0);

    return 0;
}
