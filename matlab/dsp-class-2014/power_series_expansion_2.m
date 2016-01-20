%Power Series Expansion of Rational Z-Transform 
clc;

N = input('Length of output vector : ');

num = input('Numerator Coefficients : ');
den = input('Denominator Coefficients : ');

%Compute desired number of inverse coeffs.
x = [1 zeros(1, N-1)];
y = filter(num, den, x);

disp('Coeffecients of power series expansion '); 
disp(y);

clear all;