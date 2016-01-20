%%
% 2D Fem
%

%% Inputs
num_elements = 2; %input('Enter number of elements : ');
he = 2; %input('Enter length along x-direction : ');
ke = 4; %input('Enter length along y-direction : ');

order = 1; % 4 nodes per element
a = 1;
c = -1;

%% Generate zayes
disp('Generating Zaye using Lagrange');
syms x y;
zayeX = lagrange(order, 0, he/order, x);
zayeY = lagrange(order, 0, ke/order, y);
zaye = transpose(zayeX)*zayeY;

disp('Zaye in x direction is : '); disp(zayeX);
disp('Zaye in y direction is : '); disp(zayeY);
disp('2D Zaye is : '); disp(zaye); 

% Make zaye linear
% [Z1 Z3]  -> [Z1 Z2 Z3 Z4]
% [Z2 Z4] 

zayeTemp(1) = zaye(1,1);
zayeTemp(2) = zaye(2, 1);
zayeTemp(3) = zaye(1, 2);
zayeTemp(4) = zaye(2, 2);
zaye = zayeTemp;

%% Computing Kij (Stiffness Matrix)
k = zeros(4);
for i=1:4
    for j=1:4
        integrableF = a*diff(zaye(i))*diff(zaye(j));
        [disps, k(i, j)] = evalc('numerical_integration2D(integrableF, 0, he, 0, ke)');
        fprintf('Integrating to compute k(%d, %d) ... (= %f) \n', i, j, k(i, j));
    end
end

disp('k matrix for one element is : '); disp(k);


%% Assembly of K

connectivity = [1 2 5 4; 2 3 6 5; 4 5 8 7; 5 6 9 8];  
disp('Assembling K using default connectivity : '); disp(connectivity);

K = assembly(k, connectivity);
disp('Assembeled matrix is : '); disp(K);

%% Computing Fi (Force Matrix)
f = zeros(1, 4);
for i=1:4
    [disps, f(i)] = evalc('numerical_integration2D(zaye(i), 0, he, 0, ke)');
    fprintf('Integrating to compute f(%d) ... (= %f)\n', i, f(i));
end
disp('Force matrix is : '); disp(f);


%% Assembly of F
F = ones(9, 1); %% TODO

disp('Assembeled F is : '); disp(F);


%% Apply boundary conditions

%%%%%%% TODO %%%%%%%%

%% Computing U
U = inv(K)*F;
disp('Final U is : '); disp(U);
