function [ out ] = rotation2DPoint(x, y, x_anchor, y_anchor, theta)
%ROTATION2DPOINT Summary of this function goes here
%   Detailed explanation goes here

    %translate to x_anchor, y_anchor
    [x1, y1] = translation2D(0, 0, x_anchor, y_anchor, x, y);
    r = rotation2D(x1, y1, theta);
    x2 = r(1);
    y2 = r(2);
    [x3, y3] = translation2D(x_anchor, y_anchor, 0, 0, x2, y2);
    
    out = [x3, y3];

end

