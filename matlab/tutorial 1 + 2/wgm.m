function y = wgm(x,w)
    if length(w) ~= length(x)
        error('>!> Weights amd variables of different lengths');
    elseif sum(x) ~= sum(abs(x))
        error('>!> One of the variablse less than 0 ');
    else
        for i=1:length(w),
            if w(i) <= 0
                error('>!> One of the weights <= 0 ');
            end
        end
    end
    %normalise w
    w = w/norm(w,1);
    y = x.^w;
end