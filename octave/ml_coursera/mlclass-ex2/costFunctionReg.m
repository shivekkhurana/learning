function [J, grad] = costFunctionReg(theta, X, y, lambda)
	%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
	%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
	%   theta as the parameter for regularized logistic regression and the
	%   gradient of the cost w.r.t. to the parameters. 

	% Initialize some useful values
	m = length(y); % number of training examples

	% You need to return the following variables correctly 
	J = 0;
	grad = zeros(size(theta)); %need to redo gradient because changes occur implicitly

	% ====================== YOUR CODE HERE ======================
	% Instructions: Compute the cost of a particular choice of theta.
	%               You should set J to the cost.
	%               Compute the partial derivatives and set grad to the partial
	%               derivatives of the cost w.r.t. each parameter in theta

	s = sigmoid(X*theta);
	J = ( (-y)' *log(s)-(1-y)' * log(1-s))/m; 
	reg_cost = 0;
	for i=2:length(theta)
		reg_cost += theta(i)^2;
	end
	J += (lambda/(2*m))*reg_cost;

	for i=1:m
		for j=1:length(grad)
			grad(j) = grad(j) + (sigmoid(theta'*X(i,:)') - y(i))*X(i,j);
			if j>1
				grad(j) += lambda*theta(j);
			end
		end
	end
	grad = grad/m;

	% =============================================================

end
