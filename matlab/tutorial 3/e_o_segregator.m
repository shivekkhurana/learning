%Question 6
function [e,o] = e_o_segregator(b)
    %odd
    t = b;
    t = logical(rem(t,2*ones(1,length(t))));
    t = t.*b;
    o = t(t~=0);
end