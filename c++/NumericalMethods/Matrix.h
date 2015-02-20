#ifndef MATRIX_H
#define MATRIX_H

class Matrix {

protected:
    std::vector< std::vector<double> > matrix;
    int rows, columns;

public:
    Matrix();
    Matrix(int rows, double with=0);
    Matrix(int rows, int columns, double with=0);
    double at(int i, int j);
    void display();
    
    // static Matrix<T> ones(int n);
    // Matrix<T> operator+(const& Matrix<T> rhs);
    // Matrix<T> operator+=(const& Matrix<T> rhs);    
    // Matrix<T> operator-();
    // Matrix<T> operator-=();  
    // Matrix<T> operator*();
    // Matrix<T> operator*=();
    // Matrix<T> Transpose();
    // Matrix<T> GaussElimination();
    // std::vector<Matrix<T>> LUDecomposition();
    // Matrix<T> Inverse();
};

#endif