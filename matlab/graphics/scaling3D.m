function [ a ] = scaling3D( p, q, r, x, y, z)
%SCALING3D Summary of this function goes here
%   Detailed explanation goes here
a = [p 0 0; 0 q 0; 0 0 r]*[x; y; z];

end

