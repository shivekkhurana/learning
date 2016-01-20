function [ o ] = translation3D(x, y, z, tx, ty, tz)
%TRANSLATION3D Summary of this function goes here
%   Detailed explanation goes here
    o = [1 0 0 tx; 0 1 0 ty; 0 0 1 tz, 0 0 0 1]*[x; y; z; 1];
end

