function c = interleave(a,b)
    m = max(length(a), length(b));
    
    if(m == length(b))
        %b is bigger add elements to a
        while(m - length(a) >0)
            a(end + 1) = 0;
        end
    else
        while(m - length(b) >0)
            b(end + 1) = 0;
        end
    end
    
    %now matrices are of equal dimensions
    
    c = [a; b];
    c = c(c~=0);      
end