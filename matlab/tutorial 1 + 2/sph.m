function sph(r,a,b,c)
    [x y z] = sphere;
    figure;
    axis equal;
    surf(r*x + a, r*y + b, r*z + c);
end