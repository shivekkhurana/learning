function [k, f] = quad_stiffness(points, f0)
	
	% points = [0,0; 5,-1; 4,5; 1,4];
	
	syms t1 t2 x y;
	zaye = [ (1/4)*(t1-1)*(t2-1), (-1/4)*(t1+1)*(t2-1), (1/4)*(t1+1)*(t2+1), (-1/4)*(t1-1)*(t2+1)]; % for order 1
	disp('Linear zaye is : '); disp(zaye);

	for i=1:2
		for j=1:4
			if (i==1) 
				x = t1;
			else 
				x = t2;
			end
			J_(i, j) = diff(zaye(j), x);
		end
	end

	J = J_*points;
	disp('Jacobian is : '); disp(J);
	detJ = det(J);
	disp('Determinant of Jacobian is :'); disp(detJ);

	dZayeGlobal = inv(J)*J_;

	k = zeros(4);
	f = zeros(1, 4);
	fprintf('Computing stiffness matrix : \n|');

	for i=1:4
		integrableF(x, y) = subs(subs(zaye(i)*f0*detJ, t1, x), t2, y);
		[disps, f(i)] = evalc('numerical_integration2D(integrableF, -1, 1, -1, 1)');
		for j=1:4
			syms x y;
			integrableF = (dZayeGlobal(1, i)*dZayeGlobal(1, j) + dZayeGlobal(2, i)*dZayeGlobal(2, j))*detJ;
			integrableF(x, y) = subs(subs(integrableF, t1, x), t2, y);
			[disps, k(i, j)] = evalc('numerical_integration2D(integrableF, -1, 1, -1, 1)');
			fprintf('--')
		end
	end
	fprintf(' done --|\n\n');

	disp('k matrix is : '); disp(k);
end