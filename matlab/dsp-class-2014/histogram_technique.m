%% Finding and plotting histogram 

%% Code

clc; close all;

% Load and convert image to gray scale. Can be extended to all layers
I = rgb2gray(imread('C:\Users\Shivek Khurana\Desktop\bhalu.jpg'));

subplot(131);
imshow(I);
title('Input Image');

h = imhist(I, 256);

subplot(132);
imhist(I);
ylim('auto');
title('Histogram using  imhist function');

% Plot using bar function
h1 = h(1:10:256);
horizontal = 1:10:256;

subplot(133);
bar(horizontal, h1);
title('Histogram using bar function');

clear all;