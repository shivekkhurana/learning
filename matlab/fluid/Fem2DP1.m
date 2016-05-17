%%
% 2D Fem
%

%% Inputs
num_elements_x = 2; %input('Enter number of elements along x-direction : ');
num_elements_y = 2; %input('Enter number of elements along y-direction : ');
he = 1/num_elements_x; %input('Enter length of each element along x-direction : ');
ke = 1/num_elements_y; %input('Enter length of each element along y-direction : ');

order = 1; %input('Enter order (1-> linear, 2-> quadratic): ') %4 nodes per element
numNodes = (order+1)^2;
f0 = 1; %input('Enter f0 : ');
a = 1; %input('Enter a : ');
c = -1;

%% Generate zayes
disp('Generating Zaye using Lagrange');
syms x y;
% zayeX = lagrange(order, 0, he, x);
% zayeY = lagrange(order, 0, ke, y);
zaye = zayeX*zayeY;
% 
% disp('Zaye in x direction is : '); disp(zayeX);
% disp('Zaye in y direction is : '); disp(zayeY);
% disp('2D Zaye is : '); disp(zaye); 
% 
% % Make zaye linear
% % [Z1 Z3]  -> [Z1 Z2 Z3 Z4]
% % [Z2 Z4] 
% 
% i = 1;
% for j=1:sqrt(numNodes)
%     for k=1:sqrt(numNodes)
%         zayeTemp(i) = zayeX(j)*zayeY(k);
%         i = i+1;
%     end
% end
% 
% zaye = zayeTemp;

%zaye = [ (2*x - 1)*(2*y - 1), -2*x*(2*y - 1), 4*x*y, -2*y*(2*x - 1)]; % for order 1
disp('Linearized zaye is : '); disp(zaye);

%% Computing Kij (Stiffness Matrix)
k = zeros(numNodes); 
for i=1:numNodes
    for j=1:numNodes
        integrableF = a*diff(zaye(i), x)*diff(zaye(j), x) + a*diff(zaye(i), y)*diff(zaye(j), y);
        % disp('IntegrableF is : '); disp(integrableF);
        [disps, k(i, j)] = evalc('numerical_integration2D(integrableF, 0, 0.5, 0, 0.5)');
        fprintf('Integrating to compute k(%d, %d) ... (= %f) \n', i, j, k(i, j));
    end
end

disp('k matrix for one element is : '); disp(k);

%% Assembly of K

%% Todo : generate general connectivity %%
connectivity = [1 2 5 4; 2 3 6 5; 4 5 8 7; 5 6 9 8];  
disp('Assembling K using default connectivity : '); disp(connectivity);

K = assembly(k, connectivity);
disp('Assembeled matrix is : '); disp(K);


%% Computing Fi (Force Matrix)
f = zeros(4, 1);
for i=1:4
    [disps, f(i)] = evalc('numerical_integration2D(zaye(i), 0, he, 0, ke)');
    fprintf('Integrating to compute f(%d) ... (= %f)\n', i, f(i));
end
disp('Force matrix is : '); disp(f);


%% Assembly of F
F = assembly(f, connectivity);
disp('Assembeled F is : '); disp(F);

%% Apply boundary conditions
u_boundary_conditions = [nan nan 0 nan nan 0 0 0 0];
disp('Applying boundary conditions on primary variable u : '); disp(u_boundary_conditions);

for i=length(u_boundary_conditions):-1:1
    % traverse in reverse direction to avoid missing indices
    u_val = u_boundary_conditions(i);
    if (u_val == 0)
        K(i, :) = []; % remove ith row
        K(:, i) = []; % remove ith column
        
        F(i) = []; 
    end
end

disp('Reduced K is : '); disp(K);
disp('Inverted Reduced K is : '); disp(inv(K));
disp('Reduced F is : '); disp(F);

%% Computing U
U = inv(K)*F;

disp('Final U is : '); disp(U);
