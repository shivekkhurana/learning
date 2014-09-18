% Scheduling %

function [] = scheduling ()
    A1 = [
        0 1 0 0 1 0 0 0 0 0 0;
        1 0 1 0 0 1 0 0 0 0 0;
        0 1 0 1 0 0 1 0 0 0 0;
        0 0 1 0 0 0 0 1 0 0 0;
        1 0 0 0 0 1 0 0 1 0 0;
        0 1 0 0 1 0 0 0 0 1 0;
        0 0 1 0 0 0 0 1 0 0 0;
        0 0 0 1 0 0 1 0 0 0 1;
        0 0 0 0 1 0 0 0 0 1 0;
        0 0 0 0 0 1 0 0 1 0 1;
        0 0 0 0 0 0 0 1 0 1 0
    ];

    A = [
        0 1 1 1 0;
        1 0 0 1 0;
        1 0 0 0 0;
        1 1 0 0 1;
        0 0 0 1 0
    ];

    vertices = 1:length(A1);

    %next_adj_group(A, 1)
    %meetable_group(A, 1)

    run(A1, vertices);    



end

function [newA] = cut_vertices (A, cut_set)
    
    for i = 1:length(cut_set)
        A = cut_vertex(A, cut_set(i));
        cut_set = cut_set .- 1;
    end

    newA = A;
end

function [newA] = cut_vertex (A, v)
    if (length(A) > 0)
        A(v, :) = []; % row delete
        A(:, v) = []; % column delete
        newA = A;
    end
end

function [aSet] = adj_group (A, v)
    aSet  = find(A(v, :) == 1);
end

function [nextASet] = meetable_group (A, anchor)
    aSet  = adj_group(A, anchor);

    nextASet = [];
    for aV=aSet
        nextASet = [nextASet adj_group(A, aV)];
    end
    
    nextASet = setdiff(nextASet, aSet);

end

function [newA, shiftedVertices] = run (A, vertices, anchor=1) 


    if sum(A(:))
        mSet = meetable_group(A, anchor);
        if mSet

            disp(vertices(mSet));

            newA = cut_vertices(A, mSet);
            vertices
            mSet
            shiftedVertices = setdiff(vertices, mSet);

            run(newA, shiftedVertices);
        else
            run(A, vertices, anchor+1);
        end
            
    else
        disp(vertices);
    end
end

function [] = plot(A, v)
    disp(v);
    figure;
    positions = rand(length(A), 2)*10 + 10;
    gplot (A, positions, 'o-');
    set (get (gca, ('children')), 'markersize', 12);
end