function g = sigmoid(z)
	%SIGMOID Compute sigmoid functoon
	%   J = SIGMOID(z) computes the sigmoid of z.

	% You need to return the following variables correctly 
	[rows, columns] = size(z);
	g = zeros(rows, columns);

	% ====================== YOUR CODE HERE ======================
	% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
	%               vector or scalar).

	for i=1:rows
		for j=1:columns
			g(i,j) = 1/(1+e^-z(i,j));
		end
	end
	% =============================================================
end