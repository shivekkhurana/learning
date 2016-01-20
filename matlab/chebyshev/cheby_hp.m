% Chebyshev High Pass Filter Type 1
clc; clear all; close all;

alpha_p = 1; 
alpha_s = 15;
w_p = 0.3*pi;
w_s = 0.2*pi;

[n, w_n] = cheb1ord(w_p/pi, w_s/pi, alpha_p, alpha_s);
[b, a] = cheby1(n, alpha_p, w_n, 'high');
[h, w] = freqz(b, a);

subplot(2, 1, 1); plot(w/pi, 20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in db');
title('Magnitude Response');

subplot(2,1,2); plot(w/pi, angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in radians');
title('Phase Response');