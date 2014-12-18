% 1 = head, 0 = tail    
fState = [
    1 1 0 1 1;
    1 0 0 0 1;
    0 0 1 0 0;
    1 0 0 0 0;
    1 1 0 0 0
]; %fountain state

baseState = fState;

function [A] =  getA()
    global fState;
    A = fState(1:3, 1:3);
end

function [B] = getB()
    global fState;
    B = fState(1:3, 3:5);
end

function [C] = getC()
    global fState;
    C = fState(3:5, 1:3);
end

function [fState] = flipA()
    global fState;
    fState(1, 1:2) = ~fState(1, 1:2);
    fState(2, 1) = ~fState(2, 1);
    fState(3, 3) = ~fState(3, 3);
end

function [fState] = flipB()
    global fState;
    fState(1, 4:5) = ~fState(1, 4:5);
    fState(2, 5) = ~fState(2, 5);
    fState(3, 3) = ~fState(3, 3);
end

function [fState] = flipC()
    global fState;
    fState(3, 3) = ~fState(3, 3);
    fState(4, 1) = ~fState(4, 1);
    fState(5, 1:2) = ~fState(5, 1:2);
end

function [fState] = clearA()
    global fState;
    fState(1, 1:2) = 1;
    fState(2, 1) = 1;
    fState(3, 3) = 1;
end

function [fState] = clearB()
    global fState;
    fState(1, 4:5) = 1;
    fState(2, 5) = 1;
    fState(3, 3) = 1;
end

function [fState] = clearC()
    global fState;
    fState(3, 3) = 1;
    fState(4, 1) = 1;
    fState(5, 1:2) = 1;
end

function [b] = onlyCenterHeads()
    global fState;
    b = 0;
    if ((fState(1:2, :) == 0) && (fState(4:5, :) == 0) && (fState(3,3) == 1)) 
        b  = 1;
    end
end