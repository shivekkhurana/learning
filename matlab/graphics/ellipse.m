function [] = ellipse(a, b, xc, yc)
	figure(1); clf; hold on;
	scatter(a*cos(0:0.01:2*pi)+xc, b*sin(0:0.01:2*pi)+yc,'.', 'g');
	hold off;
end