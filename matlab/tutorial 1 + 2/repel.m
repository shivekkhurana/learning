function d = repel(b, m)
    d = [];
    for i = 1:length(b),
        for j = 1:m,
            d(end + 1) = b(i);
        end
    end
end