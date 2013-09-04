function y = wam(x, w)
    if length(x) ~= length(w)
        error('>!> Weights amd variables of different lengths');
    elseif sum(w) == 0
        error('>!> Sum of all weights equal to 0');
    else
        for i=1:length(w),
            if w(i)<0
                error('>!> One of the weights less than 0 ');
            end
        end
    end
    %get weighted mean
    y = sum(x.*w)/sum(w);       
end