function t = binexp(n) 
    t = pastri(n);
    for i=1:n+1,
        for j=1:n+1,
            t(i, j) = t(i, j)*(-1)^(j+1);
        end
    end
end