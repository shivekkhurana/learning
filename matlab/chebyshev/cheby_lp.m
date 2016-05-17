% Chebyshev Low Pass Filter - Type 1

clc; clear all; close all;

alpha_p = 0.15; % pass band attenuation in db
alpha_s = 0.9; % stop band attenutation in db

w_p = 0.3*pi; % pass band frequency in radians 
w_s = 0.5*pi; % stop band frequency in radians

[n, w_n] = cheb1ord(w_p/pi, w_s/pi, alpha_p, alpha_s);
[b,a] = cheby1(n, alpha_p, w_n);
[h,w] = freqz(b, a);

subplot(2, 1, 1); plot(w/pi, 20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in db');
title('Magnitude Response');

subplot(2,1,2); plot(w/pi, angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in radians');
title('Phase Response');