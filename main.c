/*
 * A small program that illustrates how to call the minofthree function we wrote in
 * assembly language.
 */

#include <stdio.h>
#include <inttypes.h>

int64_t minofthree(int64_t, int64_t, int64_t);

int main() {
    printf("%ld\n", minofthree(1, -4, -7));
    printf("%ld\n", minofthree(2, -6, 1));
    printf("%ld\n", minofthree(2, 3, 1));
    printf("%ld\n", minofthree(-2, 4, 3));
    printf("%ld\n", minofthree(2, -6, 5));
    printf("%ld\n", minofthree(2, 4, 6));
    return 0;
}