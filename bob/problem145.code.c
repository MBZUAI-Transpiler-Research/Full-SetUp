#include <stdio.h>
#include <stdlib.h>

int func0(const char* x, const char* n){
    int a, b, c, d, i, j;
    char num[101], den[101];

    for (i = 0; x[i] != '/'; i++) {
        num[i] = x[i];
    }
    num[i] = '\0';
    a = atoi(num);

    for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
        den[j] = x[i];
    }
    den[j] = '\0';
    b = atoi(den);

    for (i = 0; n[i] != '/'; i++) {
        num[i] = n[i];
    }
    num[i] = '\0';
    c = atoi(num);

    for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
        den[j] = n[i];
    }
    den[j] = '\0';
    d = atoi(den);

    if ((a * c) % (b * d) == 0) return 1;
    return 0;
}


#include <assert.h>
int func0(const char* x, const char* n);

int main() {
    assert(func0("1/5", "5/1") == 1);
    assert(func0("1/6", "2/1") == 0);
    assert(func0("5/1", "3/1") == 1);
    assert(func0("7/10", "10/2") == 0);
    assert(func0("2/10", "50/10") == 1);
    assert(func0("7/2", "4/2") == 1);
    assert(func0("11/6", "6/1") == 1);
    assert(func0("2/3", "5/2") == 0);
    assert(func0("5/2", "3/5") == 0);
    assert(func0("2/4", "8/4") == 1);
    assert(func0("2/4", "4/2") == 1);
    assert(func0("1/5", "5/1") == 1);
    assert(func0("1/5", "1/5") == 0);

    return 0;
}
