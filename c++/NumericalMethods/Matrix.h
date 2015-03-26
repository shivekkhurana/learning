#ifndef MATRIX_H
#define MATRIX_H

class Matrix {

private:
    std::vector< std::vector<double> > raw_matrix;
    int rows, columns;

public:
    Matrix();
    Matrix(int rows, double fill=0);
    Matrix(int rows, int columns, double fill=0);
    Matrix(const Matrix& rhs);
    
    int get_rows() const;
    int get_columns() const;
    void display();
    double determinant();
    // Matrix transpose();
    // Matrix inverse();

    double& operator()(const int& i, const int& j);
    const double& operator()(const int& i, const int& j) const;
    Matrix& operator=(const Matrix& rhs);
    Matrix operator+(const Matrix& rhs);
    Matrix& operator+=(const Matrix& rhs);    
    Matrix operator-(const Matrix& rhs);
    Matrix& operator-=(const Matrix& rhs);  
    Matrix operator*(const Matrix& rhs);
    Matrix& operator*=(const Matrix& rhs);
};

#endif