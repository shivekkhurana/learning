gaussianFilter = fspecial('gaussian', [7,7], 5);

bhalu = imread('bhalu.jpg');
bhaluTransformed = filter2(gaussianFilter, bhalu(:, :, 1));

subplot(1, 2, 1);
imshow(bhalu(:, :, 1));

subplot(1, 2, 2);
title('Transformed');   
imshow(uint8(bhaluTransformed));
