#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

#include "Polynomial.h"

using namespace std;


class FalsePosition
{
    private:
        Polynomial polynomial;
    public:
        FalsePosition(Polynomial p) {
            this->polynomial = p;
        }

        float root(float error=0.001) {
            float a, b, va, vb, root;
            std::vector<float> range = this->polynomial.guess_root_range();

            while (true) {
                a = range.at(0);
                va = this->polynomial.value(a);
                b = range.at(1);
                vb = this->polynomial.value(b);

                root = (b*va - a*vb)/(va - vb);

                printf("Predicted root : %0.2f, value at predicted root : %0.2f\n", root, this->polynomial.value(root));
               
                if (this->polynomial.root_in_range(a, root)){
                    range.at(1) = root;
                    printf("New range %0.2f to %0.2f\n", a, root);
                }
                else {
                    range.at(0) = root;
                    printf("New range %0.2f to %0.2f\n", root, b);
                }

                if (this->polynomial.value(root) <= error && this->polynomial.value(root) >= 0) break;
            }
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

    FalsePosition fp = FalsePosition(p);
    printf("Root is %0.3f\n", fp.root());

    return 0;
}