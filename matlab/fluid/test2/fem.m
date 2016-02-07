%%
% 2D Fem
%

%% Inputs
num_elements_x = input('Enter number of elements along x-direction : ');
num_elements_y = input('Enter number of elements along y-direction : ');
he = 3/num_elements_x; 
ke = 2/num_elements_y; 

order = input('Enter order (1-> linear, 2-> quadratic): '); %4 nodes per element
numNodes = (order+1)^2;
f0 = 0; %input('Enter f0 : ');
a = 1; %input('Enter a : ');
c = -1;

%% Generate zayes
disp('Generating Zaye using Lagrange');
syms x y;
zayeX = lagrange(order, 0, he, x);
zayeY = lagrange(order, 0, ke, y);

disp('Zaye in x direction is : '); disp(zayeX);
disp('Zaye in y direction is : '); disp(zayeY);

zaye = transpose(zayeX)*zayeY;

if (order == 1)
    zayeLinear(1) = zayeX(1)*zayeY(1);
    zayeLinear(2) = zayeX(2)*zayeY(1);
    zayeLinear(3) = zayeX(2)*zayeY(2);
    zayeLinear(4) = zayeX(1)*zayeY(2);
    
    zaye = zayeLinear;
    
elseif (order == 2) 
    zayeLinear(1) = zayeX(1)*zayeY(1);
    zayeLinear(2) = zayeX(2)*zayeY(1);
    zayeLinear(3) = zayeX(3)*zayeY(1);
    zayeLinear(4) = zayeX(1)*zayeY(2);
    zayeLinear(5) = zayeX(2)*zayeY(2);
    zayeLinear(6) = zayeX(3)*zayeY(2);
    zayeLinear(7) = zayeX(1)*zayeY(3);
    zayeLinear(8) = zayeX(2)*zayeY(3);
    zayeLinear(9) = zayeX(3)*zayeY(3);
    
    zaye = zayeLinear;
    
end

disp('Linearized zaye is : '); disp(zaye);

%% Computing Kij (Stiffness Matrix)
k = zeros(numNodes); 
fprintf('Computing Stiffness Matrix \n|');
for i=1:numNodes
    for j=1:numNodes
        integrableF = a*diff(zaye(i), x)*diff(zaye(j), x) + a*diff(zaye(i), y)*diff(zaye(j), y);
        [disps, k(i, j)] = evalc('numerical_integration2D(integrableF, 0, he, 0, ke)');
        % fprintf('Integrating to compute k(%d, %d) ... (= %f) \n', i, j, k(i, j));
        fprintf('--');
    end
end
fprintf('-- done -- |\n\n');

disp('k matrix for one element is : '); disp(k);

%% Assembly of K

%% Todo : generate general connectivity %%
connectivity = [1 2 6 5; 2 3 7 6; 3 4 8 7; 5 6 9 10; 6 7 11 10; 7 8 12 11];  
disp('Assembling K using default connectivity : '); disp(connectivity);

K = assembly(k, connectivity);
disp('Assembeled matrix is : '); disp(K);


%% Computing Fi (Force Matrix)
f = zeros(4, 1);
fprintf('Computing Force Matrix \n|');
for i=1:numNodes
    [disps, f(i)] = evalc('numerical_integration2D(x*0 + y*0, 0, he, 0, ke)');
    % fprintf('Integrating to compute f(%d) ... (= %f)\n', i, f(i));
    fprintf('--');
end
fprintf('-- done -- |\n\n');
disp('Force matrix is : '); disp(f);

%% Qi (Secondary variable matrix)
Q = transpose([0 0 0 0 0 0 0 0 sin(pi*0/6) sin(pi*1/6) sin(pi*2/6) sin(pi*3/6)]);
disp('Q matrix is : '); disp(Q);

%% Assembly of F
F = assembly(f, connectivity);
disp('Assembeled F is : '); disp(F);

%% Apply boundary conditions
u_boundary_conditions = [nan nan nan 0 nan nan nan 0 cos(pi*0/6) cos(pi*1/6) cos(pi*2/6) cos(pi*3/6)];
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
