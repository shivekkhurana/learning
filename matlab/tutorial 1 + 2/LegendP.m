function c = LegendP(n)
    c = [1 n];
    for i=3:n,
        c(i) = ((2*n-1)*i*c(i-1) - (n-1)*c(i-2))/i;
    end 
end