function [] = drawLine(x1, y1, x2, y2)
	m = (y2-y1)/(x2 - x1);
	c = -m*x1 + y1;

	syms x;
	f(x) = m*x + c;

	figure(1); clf; hold on;
	linespace = -10:0.1:10; 
	scatter(linespace, f(linespace), '.');
end