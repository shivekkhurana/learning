function [c] = rectangularConnectivity(numElemX, numElemY, order)
	numNodesX = order*numElemX + 1;
	numNodesY = order*numElemY + 1;
	nodeGrid = zeros(numNodesY, numNodesX); % init node grid
	numElements = numElemX*numElemY;
	c = zeros(numElements, 4);

	% now fill node grid
	n = 1;
	for i=numNodesY:-1:1
		for j=1:numNodesX
			nodeGrid(i, j) = n;
			n = n+1;
		end
	end

	e = 1;
	for i=numNodesY:-order:2
		for j=1:order:numNodesX-1
			c(e, :) = [nodeGrid(i, j) nodeGrid(i, j+order) nodeGrid(i-order, j+order) nodeGrid(i-order, j)];
			e = e+1;
		end
	end
end