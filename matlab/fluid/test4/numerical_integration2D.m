function [ value ] = numerical_integration2D(f, x_lower, x_upper, y_lower, y_upper)
    
    disp('Staring numerical integration in 2D');
    
    syms x y;
    f(x, y) = matlabFunction(f);  

    try
        x_order = length(sym2poly(f(x, 1))) - 1;
        y_order = length(sym2poly(f(1, y))) - 1;

        order = max(x_order, y_order);
    catch
        order = 3;
    end

    num_gauss_points = ceil((order+1)/2);
        
    c1 = (x_lower+x_upper)/2;
    c2 = (x_upper-x_lower)/2;
    
    syms t z;
    x_trans(t) = c1 + c2*t;
    
    c3 = (y_lower+y_upper)/2;
    c4 = (y_upper-y_lower)/2;
    
    y_trans(z) = c3 + c4*z;
    newFunction(t, z) = f(x_trans(t), y_trans(z))*diff(x_trans(t))*diff(y_trans(z));
    
    fprintf('Order is : %d; Hence using %d Gauss Points\n', order, num_gauss_points);
    
    if (num_gauss_points == 1)
        W = [2];
        x_values = [0];
    end
    
    if (num_gauss_points == 2)
        W = [1;1];
        x_values = [1/sqrt(3); -1/sqrt(3)];
    end
    
    if (num_gauss_points == 3)
        W = [5/9; 8/9; 5/9];
        x_values = [-1*sqrt(3)/5; 0; sqrt(3)/5];
    end
    
    disp('Weight matrix is : ');
    disp(W);
    
    disp('X values are : ');
    disp(x_values);
    
    value = 0;
    for i=1:num_gauss_points
        for j=1:num_gauss_points
            value = value + W(i)*W(j)*newFunction(x_values(i), x_values(j));
        end
    end
    value = double(value);
end

