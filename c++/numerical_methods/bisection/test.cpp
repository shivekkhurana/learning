#include <iostream>
#include <cstdlib>
#include <algorithm>
#include <vector>
#include <cmath>

#include "Polynomial.h"

using namespace std;

int main(int argc, char* argv[]) {

    std::vector<float> coeffs;
    int i, n_terms;

    n_terms = argc - 1;

    for (i = 0; i < n_terms; i++) 
    {
        coeffs.push_back(atof(argv[i+1]));
    }

    std::reverse(coeffs.begin(), coeffs.end());
    Polynomial p = Polynomial(coeffs);

    // p.display();


    return 0;
}