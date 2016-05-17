syms x y L1 L2 L3;

points = [[0,0]; [0.5,0]; [0.5,0.5]];

x = points(1, 1)*L1 + points(2, 1)*L2 + points(3, 1)*(1-L1-L2);
y = points(1, 2)*L1 + points(2, 2)*L2 + points(3, 2)*(1-L1-L2);

J = [diff(x, L1) diff(y, L1); diff(x, L2) diff(y, L2)];
disp('Jacobian is : '); disp(J);
detJ = det(J);
disp('Determinent of J is :'); disp(detJ);

zaye = [L1; L2; L3];

diffedZaye = inv(J)*[diff(L1, L1) diff(L2, L1) diff(1-L1-L2, L1); diff(L1, L2) diff(L2, L2) diff(1-L1-L2, L2)];
disp('Differentiated zayes matrix is : '); disp(diffedZaye);


fprintf('Computing stiffness and force matrices : \n|--');
for i=1:3
	%compute f
	integrableF(L1, L2, L3) = zaye(i)*detJ;
	f(i) = numerical_integration_triangular(integrableF);
	for j=1:3
		% compute k
		integrableF(L1, L2, L3) = (diffedZaye(1, i)*diffedZaye(1, j) + diffedZaye(2, i)*diffedZaye(2, j))*detJ;
		k(i, j) = numerical_integration_triangular(integrableF);

		%compute m
		integrableF(L1, L2, L3) = zaye(i)*zaye(j)*detJ;
		m(i, j) = numerical_integration_triangular(integrableF);

		% progess bar
		fprintf('--');
	end
end

% end progress
fprintf('-- done -- |\n\n');

f = transpose(f); % do this because assembly of f expects ex1 vector not 1xe

disp('Stiffness matrix k for each element is : '); disp(k);
disp('Stiffness matrix m for each element is : '); disp(m);
disp('Force matrix f for each element is : '); disp(f);

connectivity = [1 2 5; 2 3 6; 5 4 1; 6 5 2; 4 5 8; 5 6 9; 8 7 4; 9 8 5];
disp('Assembling using default connectivity : '); disp(connectivity);

[disps, K] = evalc('assembly(k, connectivity)');
[disps, M] = evalc('assembly(m, connectivity)');
[disps, F] = evalc('assembly(f, connectivity)');

disp('Assembeled Stiffness matrix K : '); disp(K);
disp('Assembeled Stiffness matrix M : '); disp(M);
disp('Assembeled Force matrix F : '); disp(F);

alpha = 1/2;
deltaT = 0.005;
kCap = M + (alpha*deltaT).*K;
kBar = M - ((1-alpha)*deltaT).*K;
Q = zeros(9, 1);
boundaryConditions = transpose([nan nan 0 nan nan 0 0 0 0]);

U(:, 1) = boundaryConditions;

for t=0:deltaT:50
	s = size(U, 2);
	U(:, s+1) = inv(kCap)*(kBar*U(:, s) + F + Q);
	fprintf('Value at t = %f \n', t);
	disp(U(:, s+1));
	input('');	
end