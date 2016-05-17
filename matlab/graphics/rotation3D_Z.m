function [ o ] = rotation3D_Z( x, y, z, theta)
%ROTATION3D_Z Summary of this function goes here
%   Detailed explanation goes here
    o = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1]*[x; y; z];

end

