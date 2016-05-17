clc;

syms z n;
disp('Z transform of (1/4)^n');
X = ztrans((1/4)^n);
disp(X);

disp('Inverse Z transform');
x = iztrans(4*z/(4*z -1));
disp(x);

%Find and plot roots in Z plane
b = 1;
a = 1-1/4;

disp('Poles');
disp(roots(a));

disp('Zeros');
disp(roots(b));

zplane(b, a);
title('Poles and zeroes in Z plane');

clear all;
