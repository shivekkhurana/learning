#ifndef POLYNOMIAL_H
#define POLYNOMIAL_H

class Polynomial
{
protected:
    std::vector<float> coeffs;
    int n_terms, degree;

public:
    Polynomial();
    Polynomial(std::vector<float> coeffs);

    // getters
    std::vector<float> get_coeffs(); 
    int get_n_terms();
    int get_degree();
    
    void display();
    float value(float at_point);
    std::vector<float> guess_root_range(float interval=10, float base=-5);
    bool root_in_range(float lower, float upper);
    Polynomial derivative();
};

#endif