figure(1);
img = imread('/home/shivekkhurana/Pictures/wallpapers/iron-man-1920x1080-wallpaper-jbg2ta.jpg');
imshow(img);

figure(2);
gray = double(rgb2gray(img));
imshow(gray);

% Define Sobel Kernels
k_v = [
    -1 0 1;
    -2 0 2;
    -1 0 1
];
kv = double(k_v);

k_h = [
    1 2 1;
    0 0 0;
    -1 -2 -1
];
k_h = double(k_h);

% 2D Convolve images with Sobel Kernels
convVertical = abs(conv2(gray, k_v));
convHorizontal = abs(conv2(gray, k_h));

figure(3);
imshow(convVertical);

figure(4);
imshow(convHorizontal);

figure(5)
% Normalized vertical and horizontal edges combined
imshow((convHorizontal.^2 + convVertical.^2).^0.5);