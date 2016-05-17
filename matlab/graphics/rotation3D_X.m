function [ o ] = rotation3D_X( x, y, z, theta)
%ROTATION3D_Z Summary of this function goes here
%   Detailed explanation goes here
    o = [1 0 0; 0 cos(theta) -sin(theta);0 sin(theta) cos(theta)]*[x; y; z];

end


