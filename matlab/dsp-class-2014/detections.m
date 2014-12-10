% kernels
horizonal = [
    -1 -1 -1;
     2  2  2;
    -1 -1 -1
];

vertical = [
    -1  2 -1;
    -1  2 -1;
    -1  2 -1
];

diagonalUp = [
    -1 -1  2;
    -1  2 -1;
     2 -1 -1
];

diagonalDown = [
     2 -1 -1;
    -1  2 -1;
    -1 -1  2
];


bear = imread('bhalu.jpg');
title('Original');
image(bear);

subplot(221);