%% Read in the file
clear all;
close all;
[f,fs] = audioread('C:\Users\Shivek Khurana\Desktop\hs.wav');
N = size(f,1);

%% Play original file
pOrig = audioplayer(f,fs);
play(pOrig);

%% Plot both audio channels
figure;
subplot(2,1,1);
stem(1:N, f(:,1));
title('Left Channel');
subplot(2,1,2);
stem(1:N, f(:,2));
title('Right Channel');

%% Plot the spectrum
df = fs / N;
w = (-(N/2):(N/2)-1)*df;
y = fft(f(:,1), N) / N; %//For normalizing, but not needed for our analysis
y2 = fftshift(y);
figure;
plot(w,abs(y2));