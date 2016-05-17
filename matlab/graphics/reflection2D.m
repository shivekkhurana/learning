function [ x_, y_ ] = reflection2D( x, y, m, c)
%REFLECTION2D Summary of this function goes here
    d = (x + (y-c)*m)/(1 + m^2);
    x_ = 2*d - x;
    y_ = 2*d*m - y + 2*c;
end

