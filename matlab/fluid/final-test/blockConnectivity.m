function [c] = blockConnectivity(numElemX, numElemY)
	numNodesX = numElemX + 1;
	numNodesYL = numElemY + 1;
	numNodesYR = numNodesYL - numElemY/3;
	nodeGrid = zeros(numNodesYL, numNodesX); % init node grid
	numElements = numElemX*numElemY - (1/2)*numElemX*(numElemY/3);
	c = zeros(numElements, 4);

	% now fill node grid
	n = 1;
	for i=numNodesYL:-1:1
		for j=1:numNodesX
			
			if (i > numNodesYL - numNodesYR)
				nodeGrid(i, j) = n;
				n = n+1;
			else
				if (j <= (numElemX)/2 + 1)
					nodeGrid(i, j) = n;
					n = n+1;
				end
			end
		end
	end

	element = 1;
	for i=numNodesYL:-1:2
		for j=1:numNodesX-1
					
			if (i > numNodesYL - numNodesYR + 1)
				c(element, :) = [nodeGrid(i, j) nodeGrid(i, j+1) nodeGrid(i-1, j+1) nodeGrid(i-1, j)];
				element = element+1;
			else
				if (j < numElemX/2 + 1)
					c(element, :) = [nodeGrid(i, j) nodeGrid(i, j+1) nodeGrid(i-1, j+1) nodeGrid(i-1, j)];
					element = element+1;
				end
			end	

		end
	end

	% c = c(1:numElements, :); % remove redundant blocks
end