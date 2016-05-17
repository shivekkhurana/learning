function [] = circle(r, x, y)
	% Generate a circle of radius r centered at x, y
	figure(1); clf; hold on; axis 'square';
	scatter(x+r.*sin(0:0.01:2*pi), y+r.*cos(0:0.01:2*pi), '.', 'g');
	hold off;
end