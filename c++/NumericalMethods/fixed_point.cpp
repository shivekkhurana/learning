#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

#include "Polynomial.h"

using namespace std;

// Hold polynomial raised to some power
class FixedPointFunc
{
protected:
    float power;
    Polynomial fx;
    Polynomial gx;
public:
    FixedPointFunc() {

    }

    FixedPointFunc(std::vector<float> coeffs) {

        this->fx = Polynomial(coeffs);
        std::vector<float> fixed_point_func;
        for (int i=this->fx.get_n_terms()-2; i >= 0; i--) {
            if (coeffs.at(i) != 0) {
                float pop_overer = coeffs.at(i);
                int pop_overer_index = i;
                this->power = 1.0/(this->fx.get_n_terms()-i-1);

                for (i = 0; i < this->fx.get_n_terms(); i++) {
                    if (i != pop_overer_index)
                    {
                        fixed_point_func.push_back((-1/pop_overer)*coeffs.at(i));
                    } else {
                        fixed_point_func.push_back(0);
                    }
                }
                break;
            }
        }
        this->gx = Polynomial(fixed_point_func);
    }

    void display() {
        printf("x = under the root %0.5f of ", this->power);
        this->gx.display();
    }

    float value(float at) {
        return pow(this->gx.value(at), this->power);
    }
};

class FixedPoint
{
private:
    Polynomial polynomial;
    FixedPointFunc fixed_point_func;
public:
    FixedPoint(Polynomial p) {
        this->polynomial = p;
        this->fixed_point_func = FixedPointFunc(p.get_coeffs()) ;
    }

    float root(float error=0.001) {
        std::vector<float> range = this->polynomial.guess_root_range();
        float root = range.at(0);

        printf("%f\n", this->polynomial.value(root));
        while(!(0 <= fabs(this->polynomial.value(root)) && fabs(this->polynomial.value(root)) <= error)) {
            // printf("Root = %0.2f, value = %0.5f\n", root, this->polynomial.value(root));
            printf("fp value at root %0.2f is %0.3f\n", root, this->fixed_point_func.value(root));
            root = this->fixed_point_func.value(root);
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
    FixedPointFunc fpf = FixedPointFunc(p.get_coeffs());

    p.display();
    fpf.display();

    printf("value of p at 0 = %0.4f\n", p.value(0));
    printf("value of p at 1 = %0.4f\n", p.value(1));
    printf("value of fpf at 0 = %0.4f\n", fpf.value(0));
    printf("value of fpf at 1 = %0.4f\n", fpf.value(1));

    //FixedPoint f = FixedPoint(p);

    //printf("Root is %0.3f\n", f.root());

    return 0;
}