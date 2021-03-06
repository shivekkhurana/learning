#include <cstdio>
#include <iostream>
#include <stdexcept>
#include <vector>

#include "Matrix.h"

/**
 * Construct
 */

Matrix::Matrix() {}

Matrix::Matrix(int rows, double fill/*=0*/) {
    std::vector<double> row;
    for(int i = 0; i < rows; i++){    
        for(int j=0; j < rows; j++) {
            row.push_back(fill);
        }
        this->raw_matrix.push_back(row);
    }
}

Matrix::Matrix(int rows, int columns, double fill/*=0*/) {
    std::vector<double> row;
    for(int i = 0; i < rows; i++){    
        for(int j = 0; j < columns; j++) {
            row.push_back(fill);
        }
        this->raw_matrix.push_back(row);
    }
}

Matrix::Matrix(const Matrix& rhs) {
    this->raw_matrix = rhs.raw_matrix;
}

/**
 * Utility Methods
 */

int Matrix::get_rows() const{
    if (this->raw_matrix.empty()) {
        printf("Cannot get row count for an empty matrix\n");
        throw std::exception();
    }
    return this->raw_matrix.size();
}

int Matrix::get_columns() const{ 
    if (this->raw_matrix[0].empty()) {
        printf("Cannot get row count for an empty matrix\n");
        throw std::exception();
    }
    return this->raw_matrix[0].size();
}

void Matrix::scan() {
    for (int i = 0; i < this->get_rows(); i++) {
        for (int j = 0; j < this->get_columns(); j++) {
            printf("Enter value for row %d column %d : ", i, j);
            printf("\n");
        }
    }
}

void Matrix::display() {
    int rows = this->get_rows();
    int columns = this->get_columns();

    if (rows <= 0 && columns <= 0) {
        printf("Cannot display empty matrix\n");
        throw std::exception();
    }

    for (int i = 0; i < rows; i++){
        for (int j = 0; j < columns; j++) {
            std::cout << this->raw_matrix[i][j] << "  ";
        }
        std::cout << "\n";
    }
    std::cout << "\n";
}

double Matrix::determinant() {
    //todo: calc. determinant or raise exception
    throw std::exception();
}

/**
 * Operations
 */

double& Matrix::operator()(const int& i, const int& j) {
    return this->raw_matrix[i][j];
}

const double& Matrix::operator()(const int& i, const int& j) const {
    return this->raw_matrix[i][j];
}

Matrix& Matrix::operator=(const Matrix& rhs) {
    if (&rhs == this) return *this;

    this->raw_matrix.resize(rhs.get_rows());
    for (int i = 0; i < this->raw_matrix.size(); i++) {
        this->raw_matrix[i].resize(rhs.get_columns());
    }

    for (int i = 0; i < rhs.get_rows(); i++) {
        for (int j = 0; j < rhs.get_columns(); j++) {
            this->raw_matrix[i][j] = rhs(i, j);
        }
    }

    return *this;
}

Matrix Matrix::operator+(const Matrix& rhs) {
    int rows = this->get_rows();
    int columns = this->get_columns();

    if (!(rows == rhs.get_rows() && columns == rhs.get_columns())) {
        printf("Matrix dimensions do not agree.\n");
        throw std::exception();
    }

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
            this->raw_matrix[i][j] += rhs(i, j);
        }
    }

    return *this;
}

Matrix& Matrix::operator+=(const Matrix& rhs) {
    *this = *this + rhs;
    return *this;
}

Matrix Matrix::operator-(const Matrix& rhs) {
    if (this->get_rows() != rhs.get_rows() && this->get_columns() != rhs.get_columns()) {
        printf("Matrix dimensions do not agree.\n");
        throw std::exception();
    }

    for (int i = 0; i < this->get_rows(); i++) {
        for (int j = 0; j < this->get_columns(); j++) {
            this->raw_matrix[i][j] -= rhs(i, j);
        }
    }   

    return *this;
}

Matrix& Matrix::operator-=(const Matrix& rhs) {
    *this = *this - rhs;
    return *this;
}

Matrix Matrix::operator*(const Matrix& rhs) {
    if (this->get_columns() != rhs.get_rows()) {
        printf("Matrix dimensions do not agree.\n");
        throw std::exception();
    }

    unsigned rows = rhs.get_rows();
    unsigned cols = rhs.get_columns();
    Matrix result(rows, cols, 0.0);

    for (unsigned i=0; i<rows; i++) {
        for (unsigned j=0; j<cols; j++) {
            for (unsigned k=0; k<rows; k++) {
                result(i,j) += this->raw_matrix[i][k] * rhs(k,j);
            }
        }
    }

    return result;
}

Matrix& Matrix::operator*=(const Matrix& rhs) {
    *this = *this * rhs;
    return *this;
}
