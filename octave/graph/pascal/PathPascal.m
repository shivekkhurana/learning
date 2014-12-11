function PathPascal(n, r, e)

	% PASCAL(N,S) draws Pascal's triangle with coloured hexagons.
	% The colour of each hexagon is determined by the parameters
	% n and s; n is the number of rows of the triangle,
	% and s is a natural number (s ni). If s divides the number of the
	% current hexagon, then the hexagon is red, otherwise green.
	% For n <= 12 the numbers are written within each hexagon.

	% PASCAL uses n = 10, s = 4.

	% default settings
	if nargin ~=3
		n = 10;
		r = 3;
		e = 2;
	end

	a = n;
	x = 0;    
	y = 0;
	x2 = 0;
	w = 1;
	% draw the top hexagon
	Hexagon(n,x,y,w,a, 1);
	hold on;

	pt = RecursivePascal(n);
	disp('Pascal Matrix Generated');



	tic ();
	% loop on the rows of the triangle 
	for m = 1:n-1
		x = x2-a/2;
		y = y-a/2*sqrt(2);
		w = 1;
		% draw the first hexagon of each row
	
		markRed = 0;
		if ((m+1)==r && e==1)		
			markRed = 1;
		end
		Hexagon(n,x,y,w,a, markRed);
		x2 = x;

		% draw the whole row
		for l = 1:m
		    x = x+a;
		    w = pt(m+1, l+1);%nchoosek(m,l);
		
			markRed = 0;
			if ((m+1)==r && (l+1)==e)		
				markRed = 1;
			end
		    Hexagon(n,x,y,w,a, markRed);

			if(markRed == 1)
				drawPaths(pt, x, y, a, m+1, l+1);
			end
		end
	end
	elapsed_time = toc ();
	disp(sprintf("Time elapsed : %f", elapsed_time));

	hold off;
	axis square;
	axis equal;
	axis off;
end

function [x1 y1 x2 y2] = GetUpperCoordinates(x, y, a) 
	y1 = y2 = y+a/2*sqrt(2)-0.5;

	x1 = x+a/2 - a;
	x2 = x1 + a;
end

function [x1 y1 x2 y2] = GetLowerCoordinates(x, y, a) 
	y1 = y2 = y-a/2*sqrt(2)-0.5;

	x1 = x+a/2 - a;
	x2 = x1 + a;
end

function drawPaths(pt, x, y, a, r, c)

	hit_base = 0;

	coords = [x y r c];
	%while(r>0)
	%	disp('***NEW WHILE***');

		while (1)
			[px1 py1 px2 py2] = GetUpperCoordinates(coords(1,1), coords(1,2), a);

            drawV(coords(1,1), coords(1,2), px1, py1, px2, py2);
	

            %if left exists
            if (coords(1,3) > 0 && coords(1,4)-1>0 )
    			coords(size(coords, 1)+1, 1) = px1;
    			coords(size(coords, 1), 2) = py1;
                coords(size(coords, 1), 3) = r-1;
                coords(size(coords, 1), 4) = c-1;
            end
               
            if (coords(1,3) > 0 && coords(1,4)>0 && coords(1, 4) <= length(find(pt(coords(1,3), :) ~= 0)))
    			coords(size(coords, 1)+1, 1) = px2;
    			coords(size(coords, 1), 2) = py2;
                coords(size(coords, 1), 3) = r-1;
                coords(size(coords, 1), 4) = c;
            end

            coords(1, :) = [];
            disp('--------------');
            %disp(coords);
            r = r-1;

            if (size(coords, 1) == 0)
                break
            end
		end
	%end
	%disp(coords);
end

function drawV(b1, b2, x1, y1, x2, y2)
    drawLine([b1 b2], [x1 y1]);
    drawLine([b1 b2], [x2 y2]);
end