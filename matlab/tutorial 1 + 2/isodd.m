function t = isodd(x)
    t = 1; %assume all are odd
    for i=1:length(x),
        if rem(x(i), 2) == 0
            t = 0;
            break;
        end
    end
    
end