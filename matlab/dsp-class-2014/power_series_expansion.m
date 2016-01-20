%Power Series Expansion of Rational Z-Transform 

L = input('Length of output vector : ');

num = input('Numerator Coefficients : ');
den = input('Denominator Coefficients : ');

[y, t] = impz(num, den, L);
disp('Coefficienrs of the power series expansion');
disp(y);