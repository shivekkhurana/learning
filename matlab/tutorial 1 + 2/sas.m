function [a, B, C] = sas(b, A, c)
    a = (b^2 + c^2 - 2*c*b*cosd(A))^(1/2);
    C = acosd((c^2 - a^2 - b^2)/ (2*a*b));
    B = 180-A-C;
    
end