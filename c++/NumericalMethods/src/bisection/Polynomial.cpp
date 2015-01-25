#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <vector>
#include <cmath>

#include "Polynomial.h"

using namespace std;

Polynomial::Polynomial(std::vector<float> coeffs) {
    // 2x^3 + 3x + 2 = 0 -> [2 3 0 2] (saved in reverse of the way we write)
    this->coeffs = coeffs;
    this->n_terms = coeffs.size();
    this->degree  = this->n_terms - 1;
}

void Polynomial::display() {
    int i;

    for(i = this->n_terms; i >= 0; i--) {
        printf("%d\n", i);
    }
}

float Polynomial::value(float at_point) {
    return 0;
}

bool Polynomial::root_in_range(float lower, float upper) {
    return true;
}