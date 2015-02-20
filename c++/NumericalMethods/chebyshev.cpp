// Roots by Chebyshev Method

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

#include "Polynomial.h"

using namespace std;


class Chebyshev
{
private:
    Polynomial polynomial;
    Polynomial polynomial_;
    Polynomial polynomial__;
public:
    Chebyshev(Polynomial p) {
        this->polynomial = p;
        this->polynomial_ = p.derivative();
        this->polynomial__ = this->polynomial_.derivative();
    }

    float root(float error=0.001) {
        std::vector<float> range = this->polynomial.guess_root_range();
        float root = range.at(1);
        float vf, vf_, vf__;

        vf = this->polynomial.value(root);
        vf_ = this->polynomial_.value(root);
        vf__ = this->polynomial__.value(root);

        while(fabs(this->polynomial.value(root)) > error) {
            printf("Root = %0.2f, value = %0.5f\n", root, vf);
            root = root - vf/vf_ - (1/2)*pow((vf/vf_), 2)*(vf__/vf_);
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

    Chebyshev cv = Chebyshev(p);
    printf("Root is %0.3f\n", cv.root());

    return 0;
}