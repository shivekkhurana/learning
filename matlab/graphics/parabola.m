function [ ] = parabola( x0, y0, u, theta )
	% u is initial velocity at angle theta

	figure(1); clf; hold on; xlim([0 x0+20]); ylim([-10, y0+10])

	syms t;

	% s = ut + 1/2*a*t^2

	x(t) = x0 + u*cos(theta)*t;
	y(t) = y0 + u*sin(theta)*t - 0.5*9.8*(t^2); 

	% time taken to reach the floor once = time taken to travel y0 in y direction
	% s = ut + 1/2*a*t^2
	tRoots = solve(y);
	t = any(tRoots > 0);

	disp('Time taken for y to be zero for first time is : '); disp(t);
	for i=0:0.01:t
		plot(x(i), y(i));
	end
	% plot(x(0:0.01:2*t), y(0:0.01:2*t)); 
	hold off;
end

