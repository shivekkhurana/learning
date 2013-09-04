function winnumbs = lotto(n)
    winnumbs = zeros(1, n);
    if n>10
        error('n out of range');
    end
    for i=1:n,
        winnumbs(i) = randi([0,9]);
    end
end