function Pascal(n,s)

% PASCAL(N,S) draws Pascal's triangle with coloured hexagons.
% The colour of each hexagon is determined by the parameters
% n and s; n is the number of rows of the triangle,
% and s is a natural number. If s divides the number of the
% current hexagon, then the hexagon is red, otherwise green.
% For n <= 12 the numbers are written within each hexagon.

% PASCAL uses n = 10, s = 4.

% default settings
if nargin ~=2
    n = 10;
    s = 4;
end

a = n;
x = 0;    
y = 0;
x2 = 0;
w = 1;
% draw the top hexagon
Hexagon(n,x,y,w,a,s);
hold on;

pt = RecursivePascal(n);
disp('Pascal Matrix Generated');

% loop on the rows of the triangle 
for m = 1:n-1
    x = x2-a/2;
    y = y-a/2*sqrt(2);
    w = 1;
    % draw the first hexagon of each row
    Hexagon(n,x,y,w,a,s);
    x2 = x;

    % draw the whole row
    for l = 1:m
        x = x+a;
        w = pt(m+1, l+1);%nchoosek(m,l);
        Hexagon(n,x,y,w,a,s);
    end
end

hold off;
axis square;
axis equal;
axis off;
