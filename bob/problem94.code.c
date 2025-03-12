#include <stdio.h>
#include <ctype.h>
#include <string.h>

void func0(const char* message, char* out) {
    const char* vowels = "aeiouAEIOU";
    int i, j;
    
    for (i = 0; message[i] != '\0'; ++i) {
        char w = message[i];
        if (islower(w)) {
            w = toupper(w);
        } else if (isupper(w)) {
            w = tolower(w);
        }
        
        for (j = 0; vowels[j] != '\0'; ++j) {
            if (w == vowels[j]) {
                if (j < 10) {
                    w = w + 2;
                }
                break;
            }
        }
        out[i] = w;
    }
    out[i] = '\0';
}


#include <assert.h>
#include <string.h>
void func0(const char* message, char* out);

int main() {
    char output[100];

    func0("TEST", output);
    assert(strcmp(output, "tgst") == 0);

    func0("Mudasir", output);
    assert(strcmp(output, "mWDCSKR") == 0);

    func0("YES", output);
    assert(strcmp(output, "ygs") == 0);

    func0("This is a message", output);
    assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);

    func0("I DoNt KnOw WhAt tO WrItE", output);
    assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);

    return 0;
}
