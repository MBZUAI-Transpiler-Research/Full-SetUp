#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int *func0(const char *music_string, int *count) {
    int *out = NULL;
    int size = 0;
    int capacity = 0;

    char current[3] = "";
    int music_string_length = strlen(music_string) + 1;
    char *temp_music_string = malloc(music_string_length + 1);
    strcpy(temp_music_string, music_string);
    strcat(temp_music_string, " ");

    for (int i = 0; i < music_string_length; i++) {
        if (temp_music_string[i] == ' ') {
            if (strcmp(current, "o") == 0) {
                if (size == capacity) {
                    capacity = capacity > 0 ? 2 * capacity : 4;
                    out = realloc(out, capacity * sizeof(int));
                }
                out[size++] = 4;
            }
            if (strcmp(current, "o|") == 0) {
                if (size == capacity) {
                    capacity = capacity > 0 ? 2 * capacity : 4;
                    out = realloc(out, capacity * sizeof(int));
                }
                out[size++] = 2;
            }
            if (strcmp(current, ".|") == 0) {
                if (size == capacity) {
                    capacity = capacity > 0 ? 2 * capacity : 4;
                    out = realloc(out, capacity * sizeof(int));
                }
                out[size++] = 1;
            }
            strcpy(current, "");
        } else {
            size_t len = strlen(current);
            if (len < sizeof(current) - 1) {
                current[len] = temp_music_string[i];
                current[len + 1] = '\0';
            }
        }
    }
    free(temp_music_string);
    *count = size;
    return out;
}


#include <assert.h>
#include <stdlib.h>
int *func0(const char *music_string, int *count);

int issame(const int *a, int a_size, const int *b, int b_size) {
    if (a_size != b_size) return 0;
    for (int i = 0; i < a_size; i++) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

int main() {
    int count;
    int *result;

    result = func0("", &count);
    assert(issame(result, count, (int[]){}, 0));
    free(result);

    result = func0("o o o o", &count);
    assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
    free(result);

    result = func0(".| .| .| .|", &count);
    assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
    free(result);

    result = func0("o| o| .| .| o o o o", &count);
    assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
    free(result);

    result = func0("o| .| o| .| o o| o o|", &count);
    assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
    free(result);

    return 0;
}
