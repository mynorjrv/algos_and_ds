#include <stdio.h>

int main() {
    int x, y;
    int *p1, *p2;

    x = -43;
    y = 19;

    p1 = &x;
    p2 = &y;

    printf("Adress of x: %p\n", p1);
    printf("Adress of y: %p\n", p2);

    printf("Adress of x as int: %d\n", p1);
    printf("Adress of y as int: %d\n", p2);

    printf("Adress of x as signed int: %i\n", p1);
    printf("Adress of y as signed int: %i\n", p2);
    return 0;
}
