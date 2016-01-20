function [ o ] = rotation2D(x, y, theta)
    o = inv([cos(theta) -sin(theta); sin(theta) cos(theta)])*[x; y];
end

