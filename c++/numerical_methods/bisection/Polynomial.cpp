#include <iostream>
#include <cstdlib>
#include <vector>
#include <cmath>

#include "Polynomial.h"

using namespace std;

Polynomial::Polynomial();

Polynomial::Polynomial(std::vector<float> coeffs) {
    // 2x^3 + 3x + 2 = 0 -> [2 3 0 2] (saved in reverse of the way we write)
    this.coeffs = coeffs;
    this.n_terms = coeffs.size();
    this.degree  = this.n_terms - 1;
}

Polynomial::display() {
    int i;

    for(i = n_terms; i >= 0; i--) {

    }
}