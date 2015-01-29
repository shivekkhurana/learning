#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

#include "Polynomial.h"

using namespace std;


class Bisection
{
    private:
        Polynomial polynomial;
    public:
        Bisection(Polynomial p) {
            this->polynomial = p;
        }

        float root(float error=0.001) {
            float a, b, mid_point;
            std::vector<float> range = this->polynomial.guess_root_range();

            while (true) {
                a = range.at(0);
                b = range.at(1);

                mid_point = (b+a)/2;
                printf("mid point : %0.2f, value at mid point : %0.2f\n", mid_point, this->polynomial.value(mid_point));

                if (this->polynomial.root_in_range(a, mid_point)){
                    range.at(1) = mid_point;
                    printf("New range %0.2f to %0.2f\n", a, mid_point);
                }
                else {
                    range.at(0) = mid_point;
                    printf("New range %0.2f to %0.2f\n", mid_point, b);
                }

                if (this->polynomial.value(mid_point) <= error && this->polynomial.value(mid_point) >= 0) break;
            }

            return mid_point;   
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