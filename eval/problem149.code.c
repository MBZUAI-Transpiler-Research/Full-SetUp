#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char** func0(const char* planet1, const char* planet2, int* returnSize) {
    const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
    int pos1 = -1, pos2 = -1, m;
    for (m = 0; m < 8; m++) {
        if (strcmp(planets[m], planet1) == 0) pos1 = m;
        if (strcmp(planets[m], planet2) == 0) pos2 = m;
    }
    if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
        *returnSize = 0;
        return NULL;
    }
    if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
    *returnSize = pos2 - pos1 - 1;
    if (*returnSize <= 0) {
        *returnSize = 0;
        return NULL;
    }
    char** out = malloc(*returnSize * sizeof(char*));
    for (m = pos1 + 1; m < pos2; m++) {
        out[m - pos1 - 1] = (char*)planets[m];
    }
    return out;
}


#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char** func0(const char* planet1, const char* planet2, int* returnSize);

int issame(char** a, const char** b, int a_size, int b_size) {
    if (a_size != b_size) return 0;
    for (int i = 0; i < a_size; i++) {
        if (strcmp(a[i], b[i]) != 0) return 0;
    }
    return 1;
}

int main() {
    int size;
    char** result;

    const char* test1[] = {"Saturn", "Uranus"};
    result = func0("Jupiter", "Neptune", &size);
    assert(issame(result, test1, size, 2));
    free(result);

    const char* test2[] = {"Venus"};
    result = func0("Earth", "Mercury", &size);
    assert(issame(result, test2, size, 1));
    free(result);

    const char* test3[] = {"Venus", "Earth", "Mars", "Jupiter", "Saturn"};
    result = func0("Mercury", "Uranus", &size);
    assert(issame(result, test3, size, 5));
    free(result);

    const char* test4[] = {"Earth", "Mars", "Jupiter", "Saturn", "Uranus"};
    result = func0("Neptune", "Venus", &size);
    assert(issame(result, test4, size, 5));
    free(result);

    result = func0("Earth", "Earth", &size);
    assert(size == 0 && result == NULL);

    result = func0("Mars", "Earth", &size);
    assert(size == 0 && result == NULL);

    result = func0("Jupiter", "Makemake", &size);
    assert(size == 0 && result == NULL);

    return 0;
}
