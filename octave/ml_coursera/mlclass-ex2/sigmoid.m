function g = sigmoid(z)
	%SIGMOID Compute sigmoid functoon
	%   J = SIGMOID(z) computes the sigmoid of z.

	% You need to return the following variables correctly 
	% =============================================================
	g = 1.0 ./ (1.0 + exp(-z));
end