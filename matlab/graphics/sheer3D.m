
function [ o ] = sheer3D( x, y, z, sxy, sxz, syx, syz, szx, szy)
%SHEER3D Summary of this function goes here
%   Detailed explanation goes here
x_ = x + sxy*y + sxz*z;
y_ = syx*x + y + syz*z;
z_ = szx*x + szy*y + z;
o = [x_; y_; z_];
end

