% Scheduling %

function [] = scheduling ()
    A = [
        0 1 0 0 1 0 0 0 0 0 0;
        1 0 1 0 0 1 0 0 0 0 0;
        0 1 0 1 0 0 1 0 0 0 0;
        0 0 1 0 0 0 0 1 0 0 0;
        1 0 0 0 0 1 0 0 1 0 0;
        0 1 0 0 1 0 0 0 0 1 0;
        0 0 1 0 0 0 0 1 0 0 0;
        0 0 0 1 0 0 1 0 0 0 1;
        0 0 0 0 1 0 0 0 0 1 0;
        0 0 0 0 0 1 0 0 1 0 0;
        0 0 0 0 0 0 0 1 0 0 0
    ];

    A = [
        0 1 0 1 1;
        1 0 0 0 0;
        0 0 0 0 0;
        1 0 0 0 0;
        1 0 0 0 0
    ];

    A = [
        0 0 1 1 0;
        0 0 0 1 0;
        1 0 0 0 0;
        1 1 0 0 1;
        0 0 0 1 0
    ];

    A  = [
        0 1 0 0 0 0 0 0;
        1 0 1 1 0 0 0 0;
        0 1 0 1 1 0 0 0;
        0 1 1 0 0 0 0 0;
        0 0 1 0 0 1 1 1;
        0 0 0 0 1 0 1 0;
        0 0 0 0 1 1 0 1;
        0 0 0 0 1 0 1 0
    ];

    A1 = [
        0 1 0 0 1;
        1 0 1 1 0;
        0 1 0 1 1;
        0 1 1 0 1;
        1 0 1 1 0
    ];
    
    run(A, 1:length(A));
end

function [aSet] = adjGroup (A, v)
    aSet  = find(A(v, :) == 1);
end

function [mSet] = meetableSet (A, v)   
    nonAdjacent = setdiff(1:length(A), adjGroup(A, v));
    removedVertices = [];

    for n = nonAdjacent
        indexN = find(nonAdjacent == n);
        for m = nonAdjacent(indexN:length(nonAdjacent))
            if (A(n, m) == 1)
                if ~ismember(n, removedVertices) 
                    removedVertices(length(removedVertices)+1) = m;
                end
            end
        end
    end

    mSet = setdiff(nonAdjacent, removedVertices);
end

function [newA, shiftedVertices] = run (A, vertices,  anchor=1) 
    if sum(A(:)) > 0
        mSet = meetableSet(A, anchor);
        disp(vertices(mSet));

        newA = cutVertices(A, mSet);
        shiftedVertices = setdiff(vertices, vertices(mSet));
        run(newA, shiftedVertices);
    else
        disp(vertices);
    end

end



% ** 
% Utilities
% **

function [newA] = cutVertices (A, cut_set)
    for i = 1:length(cut_set)
        A = cutVertex(A, cut_set(i));
        cut_set = cut_set .- 1;
    end
    newA = A;
end

function [newA] = cutVertex (A, v)
    if (length(A) > 0)
        A(v, :) = []; % row delete
        A(:, v) = []; % column delete
        newA = A;
    end
end

function [] = plot(A, v)
    disp(v);
    figure;
    positions = rand(length(A), 2)*10 + 10;
    gplot (A, positions, 'o-');
    set (get (gca, ('children')), 'markersize', 12);
end