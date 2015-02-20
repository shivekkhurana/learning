#include <cstdio>
#include <iostream>
#include <vector>

#include "Matrix.h"

Matrix::Matrix() {}

double Matrix::at(int i, int j) {
    std::vector<double> row = this->matrix.at(i);
    return row.at(j);
}


Matrix::Matrix(int rows, double with) {
    this->rows = rows;
    this->columns = rows;
    std::vector<double> row;
    for(int i = 0; i < rows; i++){    
        for(int j=0; j < rows; j++) {
            row.push_back(with);
        }
        this->matrix.push_back(row);
    }
}

Matrix::Matrix(int rows, int columns, double with) {
    this->rows = rows;
    this->columns = columns;
    std::vector<double> row;
    for(int i = 0; i < rows; i++){    
        for(int j = 0; j < columns; j++) {
            row.push_back(with);
        }
        this->matrix.push_back(row);
    }
}



void Matrix::display() {
    for (int i = 0; i < this->rows; i++){
        for (int j = 0; j< this->columns; j++) {
            std::cout << this->at(i,j) << "  ";
        }
        std::cout << "\n";
    }
}