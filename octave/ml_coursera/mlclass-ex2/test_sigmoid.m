function test_sigmoid
	k0 = [0 0];
	kp = k0;
	kn = k0;

	disp(sprintf('Check for single elements'));
	for i=-100:0.25:100
		s = sigmoid(i);
		if i == 0
			k0(1) = k0(1)+1;
			if s == 0.5
				k0(2) = k0(2) + 1;
			end
			
		elseif i<0
			kn(1) = kn(1)+1;
			if s < 0.5
				kn(2) = kn(2) + 1;
			end
		else
			if i>0
				kp(1) = kp(1)+1;
				if s > 0.5
					kp(2) = kp(2) + 1;
				end
			end	
		end
		%disp(sprintf('i = %f\nsigmoid(%f) = %f\n---------------\n',i,i, s));
	end

	disp(k0);disp(kp);disp(kn);

	if k0(1) == k0(2) && kp(1) == kp(2) && kn(1) == kn(2)
		disp(sprintf('\n\n\n------------------------------\npass\n------------------------------\n\n'))
	end
	
	disp(sprintf('Check for matrices'));
	for i=1:500
		k = rand(ceil(rand*(10)), ceil(rand*(10)))*10;
		disp(sprintf('\nk = \n'));
		disp(k);
		disp(sprintf('\nsigmoid(k) = \n'));
		disp(sigmoid(k));
		disp(sprintf('\n----------------\n'));
	end

end
