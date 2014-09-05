close all;

% stem plot sequence
figure('name', 'Stem Plot Sequence');
x = 1:7;
stem(x);

% invert amplitude
figure(1);
figure('name', 'Inverted Amplitude');
stem(x.*-1);

% scale amplitude
figure(2);
figure('name', 'Scaled Amplitude');
stem(x.*10);

% clamp amplitude
figure(3);
figure('name', 'Clamped Amplitude');
stem(x.+10);

%% time shifting

% delayed signal
figure(4);
shift = 2;
figure('name', 'Delayed Signal');
stem(x, shift:length(x)+shift-1);

% advanced signal
figure(5);
shift=-2;
figure('name', 'Advanced Signal');
stem(x, abs(shift:length(x)+shift-1));


% time inversion
figure(6);
figure('name', 'Time Inversion');
stem(fliplr(x), x)

% even
figure(7);
figure('name', 'Even Filter');
xeven = 0.5*(x+fliplr(x));
stem(xeven)

% odd
figure(8);
figure('name', 'Odd Filter');
xodd = 0.5*(x-fliplr(x));
stem(xodd);