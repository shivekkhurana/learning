
clear all; clc; close all;

% Equation to solve
% -----------------------------------------------

% -d/dx(a11*d/dx(phi)) -d/dy(a22*d/dy(phi)) = f 

% f = rate of pumping
% phi = velocity potential
% -d/dx(phi) = velocity in x direction
% -d/dy(phi) = velocity in y direction


%% Inputs
numElementsX = 4; %input('Enter number of quadilaterals along x-direction : ');
numElementsY = 4; %input('Enter number of quadilaterals along y-direction : ');
numElements = numElementsX*numElementsY;
numNodesX = numElementsX + 1;
numNodesY = numElementsY + 1;
numNodes = numNodesX*numNodesY;
f0 = 1; %input('Enter f0 : ');
% he will keep on changing
maxX = 3000;
maxY = 1500; 
ke = 1500/(numElementsY); 

%% Start elapse timer
tic;

%% River Coordinates
r1 = [2000, 0];
r2 = [1000, 1500];
sourcePump = [2800, 1400];
sinkPit = [500, 500];

riverXNode = ((numNodesX-1)/2)+1;

syms y;
riverXCoord(y) = 2000 + (-1000/1500)*y;

%% Discretization
coordinatesVector = zeros(numNodes, 2);

% Get river coords
fprintf('Discretizing the system ... ');
n = 1; % keep a track of node number for coordinate vector filling
for i=1:numNodesY
	yCoord = (i-1)*ke;
	xCoordRiver = double(riverXCoord(yCoord));
	heLeft = (0 + xCoordRiver)/(numElementsX/2); % he left
	heRight = (maxX - xCoordRiver)/(numElementsX/2); % he right

	for j=1:numNodesX
		if (j == riverXNode)
			xCoord = xCoordRiver;
		elseif (j < riverXNode)
			xCoord = (j-1)*heLeft;
		else
			xCoord = xCoordRiver + (j-((numElementsX/2) + 1))*heRight;
		end
		coordinatesVector(n, 1:2) = [xCoord yCoord];
		n = n+1;
	end
end
fprintf('done\n');

% Show river coords
scatter(coordinatesVector(:, 1), coordinatesVector(:, 2), '.');
hold on;
scatter(sourcePump(1), sourcePump(2), '*', 'green');
scatter(sinkPit(1), sinkPit(2), '*', 'black');

%% Get the connectivity
connectivity = rectangularConnectivity(numElementsX, numElementsY, 1); % 1 means linear order

%% Computing stiffness after transforming to master element (Jacobian Method)
ki = zeros(4, 4, numElements);
fi = zeros(4, 1, numElements);
wb = waitbar(0, 'Calculating stiffness and force matrices ... ');
fprintf('Calculating stiffness and force matrices ...');
for i=1:numElements
	nodeIndices = connectivity(i, :);
	points = coordinatesVector(nodeIndices, :);
	e = scatter(points(:, 1), points(:, 2), 'red');
	
	[disps, ki(1:4, 1:4, i), fi(1:4, 1, i)] = evalc('quad_stiffness(points, f0)');
	
	waitbar(i/numElements, wb, sprintf('Element %d of %d', i, numElements));
	delete(e);
end
hold off;
close all;
close(wb);
fprintf('done\n');

%% Assembling the system
fprintf('Assembling the K and F matrices ... \n');
[disps, K] = evalc('assembly(ki, connectivity)');
[disps, F] = evalc('assembly(fi, connectivity)');

fprintf('	=> size of assembeled K is %dx%d\n', size(K,1), size(K,2));
fprintf('	=> size of assembeled F is %dx%d\n', size(F,1), size(F,2));

%% Boundary Conditions
fprintf('Computing boundary conditions on primary variable U ... ');
U = NaN(numNodes, 1);

% We know U value is 2000 at the river nodes
riverNodes = find(coordinatesVector(:, 1) == riverXCoord(coordinatesVector(:, 2)));
U(riverNodes) = 2000;
fprintf('done\n');

fprintf('Computing boundary conditions on secondary variable Q ... ');
Q = zeros(numNodes, 1);
Q(riverNodes) = NaN;
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