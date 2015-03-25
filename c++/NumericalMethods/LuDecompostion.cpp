#include <iostream>
#include <cstdio>
#include "Matrix.h"

class LuDecomposition 
{
private:
    Matrix A;
    Matrix B;
    Matrix L;
    Matrix U;
public:
    LuDecomposition(Matrix A, Matrix B) {
        this->A = A;
        this->B = B;
        this->A.display();
        this->B.display();
    }
};

int main(int argc, char* argv[]) {

    if (argc <= 1) {
        printf("No equation entered.\n");
        return 0;
    }
    
    std::vector<float> coefficients;
    for (int i = 1; i < argc; i++) 
    {
        coefficients.push_back(atof(argv[i]));
    }
    
    Polynomial p = Polynomial(coefficients);
    p.display();

    Bisection b = Bisection(p);
    printf("Root is %0.3f\n", b.root());

    return 0;
}