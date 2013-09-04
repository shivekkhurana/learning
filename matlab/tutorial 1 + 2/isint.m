function b = isint(a)
    if a - round(a) == 0
        b = 1;
    else
        b = 0;
    end
end