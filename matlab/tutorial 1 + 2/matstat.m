function [nonz, mns] = matstat(A)
    tic;
    [r c] = size(A);
    nonz = zeros(r*c, 1);
    mns = zeros(1, c);
    
    %iter over rows
    for i=1:r,
        %iter over columns
        for j=1:c,
            nonz((i-1)*c + j, 1) = A(i, j);
        end
    end
    
    %get unweighted means of columns
    for i=1:c,
        mns(i) = mean(A(:,i));
    end
    toc
end