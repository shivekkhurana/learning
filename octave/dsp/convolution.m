%%
% Write a matlab function to compute convolution x(n)*h(n) 
%%

clear('all');

a = input('Enter starting point of x[n] : ');
b = input('Enter starting point of h[n] : ');

x = input('Enter co-efficients of x[n] : ');
h = input('Enter co-efficients of h[n] : ');

y = conv(x, h);

%%
% Plotting
%%

subplot(3, 1, 1);
p = a:(a + length(x) + 1);
stem(p, x);
xlabel('Time');
ylabel('Amplitude');
title('Input x(n)');

subplot(3, 1, 2);
q = b:(b + length(b) + 1);
stem(q, h);
xlabel('Time');
ylabel('Amplitude');
title('Impulse response h(n)');

subplot(3, 1, 3);
r = (a + b):(a + b + length(b) + 1);
stem(r, y);
xlabel('Time');
ylabel('Amplitude');
title('Output y(n)');