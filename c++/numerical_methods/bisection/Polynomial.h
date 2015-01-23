#ifndef POLYNOMIAL_H
#define POLYNOMIAL_H

class Polynomial
{
    private:
        std::vector<float> coeffs;
        int n_terms, degree;

    public:
        Polynomial();
        Polynomial(std::vector<float> coeffs);
        void display();
        float value();
        bool root_in_range(float lower, float upper);
        ~Polynomial();
    
};

#endif