function [ k_matrix ] = k_ij(order, h)
%K_IJ Summary of this function goes here
%   Detailed explanation goes here
    k_matrix = zeros(order+1);
    for i=1:order+1
        for j=1:order+1
            k_matrix(i, j) = zaye(i, h, 1)*zaye(j, h, 1); 
        end
    end

end

