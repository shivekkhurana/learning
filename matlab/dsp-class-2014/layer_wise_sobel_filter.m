clear all;
bear = imread('C:\Users\Shivek Khurana\Desktop\bhalu.jpg');

edges = [];
edges(:, :, 1) = edge(bear(:, :, 1), 'sobel');
edges(:, :, 2) = edge(bear(:, :, 2), 'sobel');
edges(:, :, 3) = edge(bear(:, :, 3), 'sobel');

subplot(231);
imshow(bear);

subplot(232);
imshow(edges(:, :, 1));

subplot(233);
imshow(edges(:, :, 2));

subplot(234);
imshow(edges(:, :, 3));

subplot(235);
title('Combined edges');	
imshow(edges(:, :, 1) + edges(:, :, 2) + edges(:, :, 3));