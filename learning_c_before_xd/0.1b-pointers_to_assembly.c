int moving_pointers() {
    int x, y;
    int *p1, *p2;

    x = -43;
    y = 19;

    p1 = &x;
    p2 = &y;

    *p1 = 17;

    p1 = p2;

    return *p2;
}
