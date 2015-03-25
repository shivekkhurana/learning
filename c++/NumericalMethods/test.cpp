#include <iostream>
#include <vector>
#include <cstdio>

#include "Matrix.h"

int main(int argc, char const *argv[])
{
    Matrix m(5, 2, 2);
    Matrix n(2, 1, 4);
    printf("Before Assignment\n");
    m.display();
    printf("After Assignment\n");
    //l.display();

    return 0;
}