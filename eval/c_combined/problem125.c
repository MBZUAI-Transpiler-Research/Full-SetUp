#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int func0(const char *date) {
    int mm, dd, yy;

    if (strlen(date) != 10) return 0;
    for (int i = 0; i < 10; i++) {
        if (i == 2 || i == 5) {
            if (date[i] != '-') return 0;
        } else {
            if (date[i] < '0' || date[i] > '9') return 0;
        }
    }

    char str_month[3] = {date[0], date[1], '\0'};
    char str_day[3] = {date[3], date[4], '\0'};
    char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};

    mm = atoi(str_month);
    dd = atoi(str_day);
    yy = atoi(str_year);

    if (mm < 1 || mm > 12) return 0;
    if (dd < 1 || dd > 31) return 0;
    if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
    if (mm == 2 && dd > 29) return 0;

    return 1;
}


#include <assert.h>
int func0(const char *date);

int main() {
    assert(func0("03-11-2000") == 1);
    assert(func0("15-01-2012") == 0);
    assert(func0("04-0-2040") == 0);
    assert(func0("06-04-2020") == 1);
    assert(func0("01-01-2007") == 1);
    assert(func0("03-32-2011") == 0);
    assert(func0("") == 0);
    assert(func0("04-31-3000") == 0);
    assert(func0("06-06-2005") == 1);
    assert(func0("21-31-2000") == 0);
    assert(func0("04-12-2003") == 1);
    assert(func0("04122003") == 0);
    assert(func0("20030412") == 0);
    assert(func0("2003-04") == 0);
    assert(func0("2003-04-12") == 0);
    assert(func0("04-2003") == 0);

    return 0;
}
