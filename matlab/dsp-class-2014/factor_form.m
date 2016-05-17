%Determination of factored form

num = input('Numerator Coefficients : ');
den = input('Denominator Coeffcients : ');

K = num(1)/den(1);

numFactors = factorize(num);
denFactors = factorize(den);

disp('Numerator Factors');
disp(numFactors);

disp('Denominator Factors');
disp(denFactors);

disp('Gain Constant');
disp(K);

zplane(num, den);
[z, p, k] = tf2zp(num, den);
