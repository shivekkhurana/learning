clear all;
img = imread('/home/shivekkhurana/Pictures/wallpapers/iron-man-1920x1080-wallpaper-jbg2ta.jpg');

subplot(2, 2, 1);
title('Iron Man');
imshow(img);

subplot(2, 2, 2);
title('Red Layer');
imshow(img(:, :, 1));

subplot(2, 2, 3);
title('Green Layer');
imshow(img(:, :, 2));

subplot(2, 2, 4);
title('Blue Layer');
imshow(img(:, :, 3));