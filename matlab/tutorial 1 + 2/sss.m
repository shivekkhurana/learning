function [A, B, C] = sss(a,b,c)
    %determine if sides valid by 
    %sum of two sides properties
    if a+b<c || a+c<b || c+b<a
        error('>!> Sides of triangle invalid.');
    end
    A = acosd((a^2 - c^2 - b^2)/ (2*b*c));
    C = acosd((c^2 - a^2 - b^2)/ (2*a*b));
    B = 180 - A - C;
end