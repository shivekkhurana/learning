function c = pastri(n)
    n = n +1;
    c = [];
    %loop over matrix rows
    for j=1:n,
        %get elements
        for i=1:j,
            c(j,i) = nchoosek(j-1,i-1); 
        end
    end
end