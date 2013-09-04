function equtri(a,b)
    l = b-a;
    x = a+l*0.5;
    y = a+l*sind(60);
    grid;
    
    patch([a b x], [a a y], 'Red');
end