function [value] = numerical_integration(f, lower, upper)

    order = length(sym2poly(f)) - 1;
    num_gauss_points = ceil((order+1)/2);
    
    c1 = (lower+upper)/2;
    c2 = (upper-lower)/2;
    
    syms t;
    x_trans(t) = c1 + c2*t;
    
    f = matlabFunction(f);
    newFunction(t) = f(x_trans)*diff(x_trans);
    
    if (num_gauss_points == 2)
        W(1) = 1;
        W(2) = 1;
        x_values(1) = 1/sqrt(3);
        x_values(2) = -1/sqrt(3);
    end
    
    if (num_gauss_points == 3)
        W(1) = 5/9;
        W(2) = 8/9;
        W(3) = 5/9;
        
        x_values(1) = -1*sqrt(3)/5;
        x_values(2) = 0;
        x_values(3) = sqrt(3)/5;
    end
    
    value = 0;
    for i=1:num_gauss_points
        value = value + W(i)*newFunction(x_values(i));
    end
    
    value = double(value);

end

