#include <cmath>
#include <cstdio>
#include <vector>

#include "Matrix.h"

using namespace std;

double f(double x, double y) {
    return -y*sin(x);
}

double K_1(double h, double x_i, double y_i) {
    return h*f(x_i, y_i);
}

double K_2(double h, double x_i, double y_i) {
    return h*f(x_i+h, y_i + h*f(x_i, y_i));
}

double y_iplus1(double y_i, double K_1, double K_2) {
    return y_i + (0.5)*(K_1+K_2);
}

int main(int argc, char* argv[]) {
    // y' + y.sin(x) = 0; y(0) = e; x ∈ [0,2]; h = 0.5
    // K_1 = h.f(x_i, y_i)
    // K_2 = h.f(x_i+h, y_i + h.f_i)
    // y_iplus1 = y_i + (1/2).(K_1 + K_2)
    float h = 0.5;
    float w = 0.5;
    float x = 0;

    Matrix Y = Matrix(1, 4);
    Y(0,0) = 2.718; //e 
    for (int i=1; i <= 3; i++) {
        x += h;
        Y(0, i) = y_iplus1(Y(0, i-1), K_1(h, x, Y(0, i-1)), K_2(h, x, Y(0, i-1)));
    }
    Y.display();
    return 0;
}