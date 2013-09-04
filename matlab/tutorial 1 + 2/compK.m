function K = compK(k2)
    K = zeros(1, length(k2));
    
    for i=1:length(K),
        a = 1;
        b = sqrt(1 - k2(i));

        while(a-b >= eps)
            a = (a+b)/2;
            b = sqrt(a*b);
        end

        K(i) = (pi/(2*a))/2;
    end
end