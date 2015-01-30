#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

#include "Polynomial.h"

using namespace std;

Polynomial::Polynomial() {
    
}

Polynomial::Polynomial(std::vector<float> coeffs) {
    // TODO : 2x^3 + 3x + 2 = 0 -> [2 3 0 2] (saved in reverse of the way we write)
    this->coeffs = coeffs;
    this->n_terms = coeffs.size();
    this->degree  = this->n_terms - 1;
}

void Polynomial::display() {
    int i;

    printf("Equation : ");
    for (i = 0; i < this->n_terms; i++) 
    {
        printf("%0.2fx^%d", this->coeffs.at(i), this->degree - i);
        if (i < n_terms - 1) printf(" + "); // add a plus symbol
    }
    printf("\n");
}

float Polynomial::value(float at_point) {
    int i;
    float value = 0;

    for (i = 0; i < this->coeffs.size(); i++)
    {
        value = value + this->coeffs.at(i)*pow(at_point, this->degree - i);
    }

    return value;
}

std::vector<float> Polynomial::guess_root_range(float interval/*=10*/, float base/*=-5*/) {
    float a, b;

    std::vector<float> range;
    std::queue<float> guess;

    guess.push(base);
    guess.push(base+interval);

    while(!guess.empty()) {
        a = guess.front();
        guess.pop();
        b = guess.front();
        guess.pop();

        printf("Trying %f to %f\n", a, b);
        if(this->root_in_range(a, b))
        {
            // boom, return this range
            printf("Signs changed. Boom.\n");
            range.push_back(a);
            range.push_back(b);
            return range;
        }
        else {
            printf("Signs didn't change. Pushing vectors onto stack\n");
            guess.push(b);
            guess.push(b+interval);

            guess.push(a-interval);
            guess.push(a);
        }
    }
} 

bool Polynomial::root_in_range(float lower, float upper) {
    return this->value(lower)*this->value(upper) < 0;
}

Polynomial Polynomial::derivative() {
    std::vector<float> derivative;
    for (int i = 0; i < this->n_terms-1; i++) {
        derivative.push_back(this->coeffs.at(i)*(this->degree-i));
    }
    return Polynomial(derivative);
}