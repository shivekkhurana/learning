function ellipsoid(x0, y0, z0, a, b, c)
    [x y z] = sphere();
    surf(x/a + x0, y/b + y0, z/c + z0);
end