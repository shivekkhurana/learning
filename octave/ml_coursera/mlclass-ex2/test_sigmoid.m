
function check_sigmoid
	disp(sprintf('Check for single elements'));
	for i=-10:0.5:10
		disp(sprintf('i = %f\nsigmoid(%f) = %f\n---------------\n',i,i, sigmoid(i)));
	end

	disp(sprintf('Check for matrices'));
	for i=1:50
		k = rand(ceil(rand*(10)), ceil(rand*(10)))*10;
		disp(sprintf('k = \n'));
		disp(k);
		disp(sprintf('sigmoid(k) = \n'));
		disp(sigmoid(k));
		disp(sprintf('\n----------------\n'));
	end
end
