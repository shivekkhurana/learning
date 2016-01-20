#include <iostream>
#include <vector>
#include <cstdio>

#include "Matrix.h"

int main(int argc, char const *argv[])
{
    Matrix m(2, 1.8);
    Matrix n(2, 4.0);
    // printf("Before Assignment\n");
    m.display();
    n.display();
    m(1,1) = 5;
    m.display();
    Matrix l;
    m*=n;
    m.display();
    Matrix j(5);
    j.scan();

    return 0;
}