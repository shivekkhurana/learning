#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <cmath>
#include <vector>
#include <queue>

using namespace std;

float value(std::vector<float> coefficients, float x) {
    int i;
    float value = 0;
    int degree = coefficients.size() - 1;

    for (i = 0; i < coefficients.size(); i++)
    {
        value = value + coefficients.at(i)*pow(x, degree - i);
    }
    return value;
}

bool root_in_range(std::vector<float> coefficients, float a, float b) {
    return value(coefficients, a)*value(coefficients, b) < 0;
}

std::vector<float> guess(std::vector<float> coefficients, float interval=10, float base=-5) {

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
        if(root_in_range(coefficients, a, b))
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

int main(int argc, char* argv[]) {
    int i, degree, n_terms;
    float error, mid_point, a, b;
    
    std::vector<float> coefficients;
    std::vector<float> range;

    n_terms = argc - 1;
    degree = argc - 2;
    error = pow(10, -3);

    // take out coefficients from argv
    printf("Equation : ");
    // coeffs of x^2 + 2x^1 + 1 saved as {1, 2, 1}
    for (i = 0; i < n_terms; i++) 
    {
        coefficients.push_back(atof(argv[i+1]));
        printf("%0.2fx^%d", coefficients.at(i), degree - i);
        if (i < n_terms - 1) printf(" + "); // add a plus symbol
    }

    printf("\n");
    printf("Degree : %d\n", degree);

    printf("Start Bisection\n");
    printf("Value at 0 = %0.2f\n",value(coefficients, 0));
    
    range = guess(coefficients);
    while (true) {
        a = range.at(0);
        b = range.at(1);

        mid_point = (b+a)/2;
        printf("mid point : %0.2f, value at mid point : %0.2f\n", mid_point, value(coefficients, mid_point));
        if (root_in_range(coefficients, a, mid_point)){
            range.at(1) = mid_point;
            printf("New range %0.2f to %0.2f\n", a, mid_point);
        }
        else {
            range.at(0) = mid_point;
            printf("New range %0.2f to %0.2f\n", mid_point, b);
        }

        if (value(coefficients, mid_point) <= error && value(coefficients, mid_point) >= 0) break;
    }

    printf("Root is : %0.2f\n", mid_point);
    return 0;   
}