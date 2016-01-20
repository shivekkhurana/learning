function [ output_args ] = dda( x1, y1, x2, y2, m, c )
%DDA Summary of this function goes here
%   Detailed explanation goes here
    figure;
    hold on;

    for i=x1:0.2:x2
        scatter(i, m*i+c);
    end

    hold off;

end

