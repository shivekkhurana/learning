function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
    %   taking num_iters gradient steps with learning rate alpha

    % Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    n = length(theta);% number of features


    for iter = 1:num_iters %iter num_iter times
        theta = theta - ((X')*(X*theta - y))*(alpha/m);
        % Save the cost J in every iteration  
        % cost w.r.t computed theta
        J_history(iter) = computeCost(X, y, theta); 
    end

end
