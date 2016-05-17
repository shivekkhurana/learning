function [ x_, y_ ] = translation2D( x0, y0, x1, y1, x, y)
    x_ = x0 + x1 + x;
    y_ = y0 + y1 + y;
end

