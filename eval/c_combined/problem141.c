#include <stdio.h>
#include <string.h>

void func0(const char *text, char *out) {
    int space_len = 0;
    int j = 0;
    for (int i = 0; i < strlen(text); i++) {
        if (text[i] == ' ') {
            space_len++;
        } else {
            if (space_len == 1) out[j++] = '_';
            if (space_len == 2) out[j++] = '_', out[j++] = '_';
            if (space_len > 2) out[j++] = '-';
            space_len = 0;
            out[j++] = text[i];
        }
    }
    if (space_len == 1) out[j++] = '_';
    if (space_len == 2) out[j++] = '_', out[j++] = '_';
    if (space_len > 2) out[j++] = '-';
    out[j] = '\0';
}


#include <assert.h>
#include <string.h>
void func0(const char *text, char *out);

int main() {
    char output[100];

    func0("Example", output);
    assert(strcmp(output, "Example") == 0);

    func0("Mudasir Hanif ", output);
    assert(strcmp(output, "Mudasir_Hanif_") == 0);

    func0("Yellow Yellow  Dirty  Fellow", output);
    assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);

    func0("Exa   mple", output);
    assert(strcmp(output, "Exa-mple") == 0);

    func0("   Exa 1 2 2 mple", output);
    assert(strcmp(output, "-Exa_1_2_2_mple") == 0);

    return 0;
}
