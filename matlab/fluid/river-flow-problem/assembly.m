function [ a ] = assembly(ki, connectivity)
    elements = size(connectivity, 1);
    fprintf('Connecting %d elements\n', elements);
    
    kRows = size(ki, 1);
    kCols = size(ki, 2);
    
    if (kCols > 1)
        % Assembly of K
        a = zeros(max(max(connectivity)));

        for e=1:elements
            for i=1:kRows
                for j=1:kCols
                    rowIndex = connectivity(e, i);
                    colIndex = connectivity(e, j);

                    a(rowIndex, colIndex) = a(rowIndex, colIndex) + ki(i, j, e);
                end
            end
        end
    else
        % Assembly of F
        a = zeros(max(max(connectivity)), 1);
        
        for e=1:elements
            for i=1:kRows
                a(connectivity(e, i)) = a(connectivity(e, i)) + ki(i, 1, e);
            end
        end
    end
end

