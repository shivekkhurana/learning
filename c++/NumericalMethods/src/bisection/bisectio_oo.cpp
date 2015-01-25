#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <cmath>
#include <vector>
#include <queue>

using namespace std;

class Polynomial
{
    private:
        std::vector<float> coeff;

    public:
        Polynomial(std::vector<float> c) {
            this.coeff = c;
        }

        void display() {

        }

        float value() {

        }

        bool root_in_range(float a, float b) {
            
        }

        ~Polynomial() {
            this.coeff = std::vector<float>;
        }
    
};

class Bisection
{
    private:
        Polynomial poly;
        std::vector<float> root_range;

        std::vector<float> guess() {

        }

    public:
        Bisection(Polynomial p) {
            this.poly = p;
        }

        ~Bisection();
    
};
