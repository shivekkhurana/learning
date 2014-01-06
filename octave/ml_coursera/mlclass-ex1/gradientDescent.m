function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
    %   taking num_iters gradient steps with learning rate alpha

    % Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    n = length(theta);% number of features


    for iter = 1:num_iters %iter num_iter times
        temp_theta = theta; %update temp_theta for simultaneous update
        for i=1:n %iter over all thetas
            hyposthesis_theta = theta*X();


        end

        % Save the cost J in every iteration  
        % cost w.r.t computed theta
        J_history(iter) = computeCost(X, y, theta); 

        
        disp(sprintf('Iteration = %d\nTheta1 = %f , Theta2 = %f',iter,theta(1), theta(2)))
        disp(sprintf('Cost J = %f\n\n',J_history(iter)))
    end

end
