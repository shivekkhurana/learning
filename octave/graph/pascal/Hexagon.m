function Hexagon(n,x,y,w,a, markRed=0)

% Hexagon(N,X,Y,W,A,S) draws a hexagon with the following parameters:
% n is the total size of Pascal's triangle.
% (x,y) is the middle point of the hexagon.
% w gives the number of this hexagon within Pascal's triangle.
% a is the length of one side of the hexagon.
% %(not implemented) s is the divisor; if s|w, the colour of the hexagon is red,
% otherwise green.

% Hexagon is used in the file Pascal.m.

red = [0.78, 0.3, 0.25];
green = [0.3, 0.78, 0.6];

% calculate the co-ordinates of the nodes of the hexagon
r = a/4*sqrt(2);
phi = linspace(0,2*pi,5);
d = r.*sin(phi)+x;
e = r.*cos(phi)+y;

% plot the edges
plot(d,e,'k-');
if (markRed == 0)
	patch(d, e, green);
else
	patch(d, e, red);
end
% determine the colour

%if mod(w,s) == 0
%    patch(d, e, red);
%else 
%    patch(d, e, green);
%end;

x = x-a/30;

% center the text within the hexagon
if w>9    
    x = x-a/10;
end;
if w>99
    x = x-a/8;
end;

% write a number or not?
if n<50
    text(x,y,num2str(w), 'color', 'white');
end;
 
