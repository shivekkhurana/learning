#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

#include "Polynomial.h"

using namespace std;


class NewtonRaphson
{
private:
    Polynomial polynomial;
    Polynomial polynomial_;
public:
    NewtonRaphson(Polynomial p) {
        this->polynomial = p;
        this->polynomial_ = p.derivative();
    }

    float root(float error=0.001) {
        std::vector<float> range = this->polynomial.guess_root_range();
        float root = range.at(1);
        while(true) {
            printf("Root = %0.2f, value = %0.5f\n", root, this->polynomial.value(root));
            root = root - this->polynomial.value(root)/this->polynomial_.value(root);
            if (this->polynomial.value(root) <= error && this->polynomial.value(root) >= 0) break;
        }
        return root;
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

    NewtonRaphson nr = NewtonRaphson(p);
    printf("Root is %0.3f\n", nr.root());

    return 0;
}