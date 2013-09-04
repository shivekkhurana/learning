function [ output_args ] = cone( a,b )
    [x y z] = cylinder([a,0,-b]);
    surf(x,y,z-0.5)
end

