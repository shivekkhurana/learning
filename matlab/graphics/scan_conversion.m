function [ ] = scan_conversion( x1, y1, x2, y2, x3, y3, x4, y4)
%SCAN_CONVERSION Summary of this function goes here
%   Detailed explanation goes here
    max_x = max([x1, x2, x3, x4]);
    min_x = min([x1, x2, x3, x4]);
    
    max_y = max([y1, y2, y3, y4]);
    min_y = min([y1, y2, y3, y4]);

    scatter([x1, x2, x3, x4], [y1, y2, y3, y4]);
    hold on;
    
    for i=min_y:0.2:max_y
        for j=max_x:0.2:max_y
            scatter(i, j);
        end
    end
    hold off;
end

