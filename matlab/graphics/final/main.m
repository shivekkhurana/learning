close all;
clear all;
% figure;
% hold on;
% starCoords = [
% 	0,0;
% 	100,0;
% 	50,100;
% 	0,60;
% 	50,-40;
% 	100,60;
% ];

% figure(1); hold on;
% % Make a star
% for t=1:3:4
% 	[x1, y1] = bresenham(starCoords(t, 1), starCoords(t, 2), starCoords(t+1, 1), starCoords(t+1, 2)); plot(x1, y1);
% 	[x2, y2] = bresenham(starCoords(t+1, 1), starCoords(t+1, 2), starCoords(t+2, 1), starCoords(t+2, 2)); plot(x2, y2);
% 	[x3, y3] = bresenham(starCoords(t, 1), starCoords(t, 2), starCoords(t+2, 1), starCoords(t+2, 2));	plot(x3, y3);
% end

% orderMatrix = [
% 	1001, 0001, 0101;
% 	1000 ,0000, 0100;
% 	1010, 0010, 0110;
% ];

% hold off; 
figure(2);
hold on;

p1 = [50; -10];
p2 = [60; 500];

% p1 = [-150; 0];
% p2 = [500; 500];


% a = 30; 
% b = 70;
% c = 0;
% d = 30;
% e = 60;


theta = [
	0; %black
	-atan((15-0)/(10+sqrt(75) - 0)); %red
	-(pi - atan((15-0)/(10+sqrt(75) - 0))); %green
];

rectangles = [
	[[0,0]; [100, 0]; [100, 300]; [0, 300]]; % black
	[[0,0]; [(10+sqrt(75))*10, 150]; [100, 300]; [-sqrt(75)*10, 150]]; % red
	[[100, 0]; [(10+sqrt(75))*10, 150]; [0,300]; [-sqrt(75)*10,150]]; %green
];

% plot rectangles
for i=1:4:9
	r = rectangles(i:i+3, :);
	r = [r; rectangles(i, :)];
	plot(r(:, 1), r(:, 2))
end

for i=1:3
	t = theta(i);
	if (i == 1) 
		r = rectangles(1:4, :);
	elseif (i==2)
		r = rectangles(5:8, :);
	else
		% i == 3
		r = rectangles(9:12, :);	
	end
		
	transformation = [cos(t) -sin(t); sin(t) cos(t)];
	inv_transformation = [cos(-t) -sin(-t); sin(-t) cos(-t)];
	
	
	scatter(p1(1), p1(2), '*', 'red');
	scatter(p2(1), p2(2), '*', 'red');

	p1T = transformation*p1;
	p2T = transformation*p2;

	rectT = transpose(transformation*transpose(r));
	% plot(rectT(:, 1), rectT(:, 2)); 
	rect1T = transformation*transpose(r(1, :));
	rect2T = transformation*transpose(r(3, :));

	shy = rectT(4,1)- rectT(1,1)
	shear = [1 -shy; 0 1 ];
	invshear = [1 shy; 0 1];

	%% shear p1 p2;
	% p1TT = shear*p1T;
	% p2TT = shear*p2T;

	% rect11T = shear*rect1T;
	% rect22T = shear*rect2T;

	[i1T, i2T] = LiangBarsky(p1T, p2T, rect1T, rect2T);

	

	% i11 = invshear*i1T;
	% i22 = invshear*i2T;

	i1 = inv_transformation*i1T;
	i2 = inv_transformation*i2T;

	scatter(i1T(1), i1T(2), '*', 'blue');
	scatter(i2T(1), i2T(2), '*', 'blue');
end