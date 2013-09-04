function A = mysparse(n)
    A = zeros(n);
    A(1,1) = 1;
    
    v = 2;
    i = 1;
    while v<n
        A(v,v) = i;
        A(v,v+1) = i+1;
        A(v+1,v) = i+2;
        A(v+1,v+1) = i+3;
        v = v + 2;
        i = i + 1;
    end
end