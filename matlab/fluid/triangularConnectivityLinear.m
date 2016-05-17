function [c] = triangularConnectivityLinear(numElemX, numElemY)
	numElements = (numElemX*numElemY)/2;
	c = zeros(numElements, 3);
	numNodesX = numElemX/2 + 1;
	numNodesY = numElemY/2 + 1;
	nodeGrid = zeros(numNodesY, numNodesX); % init node grid

	% now fill node grid
	n = 1;
	for i=numNodesY:-1:1
		for j=1:numNodesX
			nodeGrid(i, j) = n;
			n = n+1;
		end
	end

	e = 1;
	for i=numNodesY:-1:2
		for j=1:numNodesX-1
			c(e, :) = [nodeGrid(i, j) nodeGrid(i, j+1) nodeGrid(i-1, j+1)];
			c(e+1, :) = [nodeGrid(i-1, j+1) nodeGrid(i-1, j) nodeGrid(i, j)];
			e = e+2;
		end
	end
end