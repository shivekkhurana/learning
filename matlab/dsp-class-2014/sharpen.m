clear all;
bear = imread('C:\Users\Shivek Khurana\Desktop\bhalu.jpg');

sharpFilter = fspecial('unsharp');

subplot(221);
title('Original');
image(bear);

sublot(222);
title('Sharp');
sharpBear = imfilter(bear, sharpFilter);
image(sharpBear);

sublot(223);
title('Razor Sharp');
razorSharpBear = imfilter(sharpBear, sharpFilter);
image(razorSharpBear);