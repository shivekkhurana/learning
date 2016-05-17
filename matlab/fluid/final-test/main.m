
clear all; clc; close all;

% Equation to solve
% -----------------------------------------------

% -d/dx(a11*d/dx(phi)) -d/dy(a22*d/dy(phi)) = f0

% f = rate of pumping
% phi = velocity potential
% -d/dx(phi) = velocity in x direction
% -d/dy(phi) = velocity in y direction

clear all; close all;

%% Inputs
numElementsX = input('Enter number of elements along x-direction  (even number) : ');
numElementsY = input('Enter number of quadilaterals along y-direction (multiple of 3) : ');
numElements = numElementsX*numElementsY - (1/2)*numElementsX*(numElementsY/3);
numNodes = (numElementsX+1)*(numElementsY+1) - (1/2)*numElementsX*(numElementsY/3);
numNodesYL = numElementsY + 1;
numNodesYR = numElementsY + 1 - (numElementsY/3);

f0 = 0; % given;
% he will keep on changing
maxX = 16/100; % metres
maxYL= 6/100; % metres
maxYR = 4/100; %metres 
a11 = 20;
a22 = 40;
he = maxX/numElementsX;
ke = maxYL/numElementsY; 

%% Start elapse timer
tic;

%% Discretization
coordinatesVector = zeros(numNodes, 2);

% Get system coords
fprintf('Discretizing the system ... ');
n = 1; % keep a track of node number for coordinate vector filling
for i=1:numNodesYL
	for j=1:numElementsX+1
		if (j <= numElementsX/2 + 1)
			yCoord = (i-1)*ke;
			xCoord = (j-1)*he;
			coordinatesVector(n, 1:2) = [xCoord yCoord];
			n = n+1;
		elseif (j > numElementsX/2 + 1)
			% we are on the right side
			% process only if i<=numNodesYR, because other nodes are missing
			if (i <= numNodesYR)
				yCoord = (i-1)*ke;
				xCoord = (j-1)*he;
				coordinatesVector(n, 1:2) = [xCoord yCoord];
				n = n+1;
			end
		end		
	end
end
fprintf('done\n');

% Show system
scatter(coordinatesVector(:, 1), coordinatesVector(:, 2), '.');
hold on;

%% Get the connectivity
connectivity = blockConnectivity(numElementsX, numElementsY); 


%% Compute Stiffness
% Generate zayes
syms x y;
zayeX = lagrange(1, 0, he, x);
zayeY = lagrange(1, 0, ke, y);

zaye = transpose(zayeX)*zayeY;

zayeLinear(1) = zayeX(1)*zayeY(1);
zayeLinear(2) = zayeX(2)*zayeY(1);
zayeLinear(3) = zayeX(2)*zayeY(2);
zayeLinear(4) = zayeX(1)*zayeY(2);

zaye = zayeLinear;
    

%% Computing Kij (Stiffness Matrix)
fprintf('Computing k and f matrix ... \n');
k = zeros(4, 4);
f = zeros(4, 1); 
wb = waitbar(0, 'Calculating stiffness and force matrices ... ');
for i=1:4
	integrableF(x, y) = zaye(i)*f0;
	[disps, f(1:4, 1)] = evalc('numerical_integration2D(integrableF, 0, he, 0, ke)');
    for j=1:4
        integrableF = a11*diff(zaye(i), x)*diff(zaye(j), x) + a22*diff(zaye(i), y)*diff(zaye(j), y);
        [disps, k(i, j)] = evalc('numerical_integration2D(integrableF, 0, he, 0, ke)');
		waitbar(((i-1)*4+ j)/16, wb);
    end
end
close(wb);
fprintf('done\n');



%% Assembling the system
fprintf('Assembling the K and F matrices ... \n');
[disps, K] = evalc('assembly(k, connectivity)');
[disps, F] = evalc('assembly(f, connectivity)');
fprintf('	... size of assembeled K is %dx%d\n', size(K,1), size(K,2));
fprintf('	... size of assembeled F is %dx%d\n', size(F,1), size(F,2));
fprintf('done\n');

%% Boundary Conditions
fprintf('Computing boundary conditions on primary variable U ... \n');
U = NaN(numNodes, 1);

% U is 2 along GF line

GFNodes = find(coordinatesVector(:, 2) == maxYL);
e = scatter(coordinatesVector(GFNodes, 1), coordinatesVector(GFNodes, 2), 'red');
U(GFNodes) = 2;
input('U is 2 along highlighted nodes. Press any key to continue > ');
delete(e);

% U is 0 along EC line
ECNodes = find(coordinatesVector(:, 2) == maxYR & coordinatesVector(:, 1) >= maxX/2); 
U(ECNodes) = 0;
e = scatter(coordinatesVector(ECNodes, 1), coordinatesVector(ECNodes, 2), 'red');
input('U is 0 along highlighted nodes. Press any key to continue > ');
delete(e);

fprintf('\ndone\n');

fprintf('Computing boundary conditions on secondary variable Q ... \n');
Q = zeros(numNodes, 1);
Q(GFNodes) = NaN;
Q(ECNodes) = NaN;

% Q on left boundary = 0 (except top left point where U is defined)
GANodes = find(coordinatesVector(:, 1) == 0 & coordinatesVector(:, 2) < maxYL);
Q(GANodes) = 0;
e = scatter(coordinatesVector(GANodes, 1), coordinatesVector(GANodes, 2), 'red');
input('Q is 0 along highlighted nodes. Press any key to continue > ');
delete(e);

% Q on right boundary = 0 (except top right where U is defined)
CBNodes = find(coordinatesVector(:, 1) == maxX & coordinatesVector(:, 2) < maxYR);
Q(CBNodes) = 0;
e = scatter(coordinatesVector(CBNodes, 1), coordinatesVector(CBNodes, 2), 'red');
input('Q is 0 along highlighted nodes. Press any key to continue > ');
delete(e);

% Q on bottom boundary = 0
ABNodes = find(coordinatesVector(:, 2) == 0);
Q(ABNodes) = 0;
e = scatter(coordinatesVector(ABNodes, 1), coordinatesVector(ABNodes, 2), 'red');
input('Q is 0 along highlighted nodes. Press any key to continue > ');
delete(e);

fprintf('done\n');

fprintf('Applying boundary conditions ... ');
for i=1:numNodes
    uVal = U(i);
    if (~isnan(uVal))
        F = F - uVal.*K(:, i);
    end
end
fprintf('done\n');

fprintf('Reducing the system ... ');
indexVector = 1:numNodes;
for i=numNodes:-1:1
    % travel in reverse direction to avoid missing indices
    uVal = U(i);
    if (~isnan(uVal))
        K(i, :) = []; % remove ith row
        K(:, i) = []; % remove ith column
            
        F(i) = []; 
        Q(i) = [];

        indexVector(i) = [];
    end
end
fprintf('done\n');

fprintf('Computing inv(K) ... ');
invK = inv(K);
fprintf('done\n');

%% Finally get U
uComputed = invK*(F+Q);
fprintf('\nRESULTS\n=============================================\n');
for i=1:length(uComputed) 
	fprintf('Computed value at node %d = %f\n', indexVector(i), uComputed(i))
end
fprintf('\n=============================================\n\n');

%% Stop elapse timer
toc;