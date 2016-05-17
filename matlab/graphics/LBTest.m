clc;clear all; figure;
disp('Case 1 : Line overlaps window');
LiangBarsky([0,10], [10, 10], [0,0], [10, 10]);
input('Press any key to continue ...');

disp('')
disp('Case 2 : Line intersects only at one point');;
LiangBarsky([-10,0], [10,20], [0,0], [10, 10]);
input('Press any key to continue ...');


disp('')
disp('Case 3 : Line completely inside');;
LiangBarsky([5,5], [6,6], [0,0], [10, 10]);
input('Press any key to continue ...');

disp('')
disp('Case 4 : Line intersect on one side');;
LiangBarsky([-5,5], [5,6], [0,0], [10, 10]);
input('Press any key to continue ...');


disp('')
disp('Case 5 : Line intersect on both side');;
LiangBarsky([-5,5], [15,6], [0,0], [10, 10]);
input('Press any key to continue ...');

disp('')
disp('Case 6 : Line doesnt intersect at all');;
LiangBarsky([11, 11], [12,12], [0,0], [10, 10]);
input('Press any key to continue ...');

