function pt = RecursivePascal(n) 
    % The first two rows are constant
    pt(1, 1) = 1;
    pt(2, 1:2) = [1 1]; 
    for r = 3:n
        % The first element of every row is always 1
        pt(r, 1) = 1;   
        % Every element is the addition of the two elements
        % on top of it. That means the previous row.
        for c = 2:r-1
            pt(r, c) = pt(r-1, c-1) + pt(r-1, c);
        end   
        % The last element of every row is always 1
        pt(r, r) = 1;
    end
end