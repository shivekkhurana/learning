
clear all; clc;

syms x y L1 L2 L3;

%% Inputs
num_elements_x = 100;%input('Enter number of elements along x-direction : ');
num_elements_y = 60;%input('Enter number of elements along y-direction : ');
num_nodes_x = num_elements_x/2 + 1;
num_nodes_y = num_elements_y/2 + 1;
num_nodes = num_nodes_x*num_nodes_y;
f0 = 0;%input('Enter f0 : ');
he = 3/(num_elements_x/2); 
ke = 2/(num_elements_y/2); 


points = [[0,0]; [he,0]; [he,ke]];

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
	integrableF(L1, L2, L3) = f0*zaye(i)*detJ;
	f(i, 1) = numerical_integration_triangular(integrableF);
	for j=1:3
		% compute k
		integrableF(L1, L2, L3) = (diffedZaye(1, i)*diffedZaye(1, j) + diffedZaye(2, i)*diffedZaye(2, j))*detJ;
		k(i, j) = numerical_integration_triangular(integrableF);

		% %compute m
		% integrableF(L1, L2, L3) = zaye(i)*zaye(j)*detJ;
		% m(i, j) = numerical_integration_triangular(integrableF);

		% progess bar
		fprintf('--');
	end
end

% end progress
fprintf('-- done -- |\n\n');

disp('Stiffness matrix k for each element is : '); disp(k);
% disp('Stiffness matrix m for each element is : '); disp(m);
disp('Force matrix f for each element is : '); disp(f);

connectivity = triangularConnectivity(num_elements_x, num_elements_y);
disp('Assembling using connectivity : '); disp(connectivity);

[disps, K] = evalc('assembly(k, connectivity)');
% [disps, M] = evalc('assembly(m, connectivity)');
[disps, F] = evalc('assembly(f, connectivity)');

disp('Assembeled Stiffness matrix K : '); disp(K);
% disp('Assembeled Stiffness matrix M : '); disp(M);
disp('Assembeled Force matrix F : '); disp(F);

%% Qi (Secondary variable matrix)
Q = zeros(1, num_nodes);

% Zero on top boundary

% Zero on right boundary
rightBoundaryMod = num_nodes_x;
topBoundaryMod = num_nodes_y;
for i=1:num_nodes
	if (mod(i,rightBoundaryMod) == 0 )
		Q(i) = NaN;
	end
end

% Zero on top boundary
topLeftestNode = num_nodes_x*(num_nodes_y-1) + 1;
Q(topLeftestNode:length(Q)) = NaN;

Q = transpose(Q);
disp('Q matrix is : '); disp(Q); 

%% Ui (Primary variable matrix)
u_boundary_conditions = NaN(1, num_nodes);

% 0 on right boundary
rightBoundaryMod = num_nodes_x;
for i=1:num_nodes
	if (mod(i,rightBoundaryMod) == 0)
		u_boundary_conditions(i) = 0;
	end
end


% cos(pi*x/6) on top boundary
topLeftestNode = num_nodes_x*(num_nodes_y-1) + 1;

for i=topLeftestNode:num_nodes
	x = (i-topLeftestNode)*he;
	u_boundary_conditions(1, i) = cos(pi*x/6);
end

% u_boundary_conditions = [nan nan nan 0 nan nan nan 0 cos(pi*0/6) cos(pi*1/6) cos(pi*2/6) cos(pi*3/6)];
disp('Applying boundary conditions on primary variable u : '); disp(u_boundary_conditions);
for i=1:length(u_boundary_conditions)
    u_val = u_boundary_conditions(i);
    if (~isnan(u_val))
        F = F - u_val.*K(:, i);
    end
end

%% Reduction of K, F, Q
for i=length(u_boundary_conditions):-1:1
    % travel in reverse direction to avoid missing indices
    u_val = u_boundary_conditions(i);
    if (~isnan(u_val))
        K(i, :) = []; % remove ith row
        K(:, i) = []; % remove ith column
            
        F(i) = []; 
        Q(i) = [];
    end
end

disp('Reduced K is : '); disp(K);
disp('Inverted Reduced K is : '); disp(inv(K));
disp('Reduced F is : '); disp(F);
disp('Reduced Q is : '); disp(Q);
disp('F + Q is : '); disp(F+Q);

%% Computing U
U = inv(K)*(F+Q);

disp('Final U is : '); disp(U);
