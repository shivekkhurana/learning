function [ o ] = WeilorAtherton(h, w, psop)

    % Assume the polygon to be on 0,0
    % h is height
    % w is width
    % psop = points on polygon
    
    % command : WeilorAtherton(10, 10, [-5,5, 2,6, 1,5, -5,5])
    
    figure(1); clf; hold on;
    o = [];
    
    if (mod(psop, 2) ~= 0)
        disp('Error : Polygon input invalid');
    else
        %create a window
        plot([0, w, w, 0, 0], [0, 0, h, h, 0]);
        
        %create the polygon
        for i=1:2:length(psop)
            x = psop(i);
            y = psop(i+1);
            
            if (i+3<= length(psop))
                x_ = psop(i+2);
                y_ = psop(i+3);
                scatter(x, y, 'r');
                plotLine(x,y, x_, y_);
            end
            
        end
        
        for i=1:2:length(psop)
            x = psop(i);
            y = psop(i+1);
            
            if (i+2 < length(psop))
                % Next point is available
                x_ = psop(i+2);
                y_ = psop(i+3);


                fprintf('Working on point (%d, %d)\n', x, y);

                % case 1: outside to inside
                if ((x > w || x < 0) || (y > h || y < 0))
                    % its for sure that x, y is outside the polygon

                    fprintf('Point (%d, %d) outside\n', x, y);
                    % check whether other point is inside
                    if ((x_ > w || x_ < 0) || (y_ > h || y_ < 0))
                        % other point is also outside
                        % do nothing 
                        fprintf('Neighbour (%d, %d) outside: skip\n', x_, y_);

                    else
                        % other point is inside
                        fprintf('Neighbour (%d, %d) inside. \n', x_, y_);

                        % now we have 4 more case, point on left, right, top or
                        % bottom
                        [ix, iy] = intersectionWithWindow(w, h, x, y, x_, y_);
                        fprintf('Intersection is (%f, %f). Adding interection to stack.\n)', ix, iy);
                        o = [o ix iy];
                    end
                else
                    fprintf('Point (%d, %d) inside. Adding to stack.\n', x, y);
                    o = [o x y];
                    
                    if ((x_ > w || x_ < 0) || (y_ > h || y_ < 0))
                        fprintf('Neighbour (%f, %f) is outside, Computing intersection.\n', x_, y_);
                        [ix, iy] = intersectionWithWindow(w, h, x_, y_, x, y);
                        fprintf('Intersection is (%f, %f). Adding interection to stack.\n)', ix, iy);
                        o = [o ix iy];
                    else
                        disp('Neighbour also inside, continue');
                    end
                    
                end
            else
                % This x, y is last
                fprintf('Reached (%f, %f). Terminate.\n', x, y);
            end
        end
        
        % Now scatter all found points
        for i=1:2:length(o)
            scatter(o(i), o(i+1), 'b');
        end
        
    end
    
    hold off;
    

end

function [] = plotLine(x1, y1, x2, y2)
    plot([x1, x2], [y1, y2], 'r');
end

function [x, y] = intersectionWithWindow(w, h, x1, y1, x2, y2)
    syms z t;
    topLine(z, t) = t - h;
    bottomLine(z, t) = t;
    leftLine(z, t) = z;
    rightLine(z, t) = z - w;
    
    p1Inside = isInsideWindow(w, h, x1, x2);
    p2Inside = isInsideWindow(w, h, x2, y2);
    
    if xor(p1Inside, p2Inside)
        % check to see that one point is inside and one is outside, only
        % then an intersection can be
        outsidePoint = [x1, y1];
        
        if (p1Inside)
            outsidePoint = [x2, y2];
        end
        
        % Now let's check the position of outside point
        
        t = topLine(outsidePoint(1), outsidePoint(2));
        b = bottomLine(outsidePoint(1), outsidePoint(2));
        l = leftLine(outsidePoint(1), outsidePoint(2));
        r = rightLine(outsidePoint(1), outsidePoint(2));

  
       % The one regions have been covered. Need to see for remaining 4 
        
%                   |          |
%                   |     1    |
%                   |          |
%         ----------------------------------
%                   |          |
%            1      |          |      1
%                   |          |
%         ----------------------------------
%                   |          |
%                   |     1    |
%                   |          |
%        

        if (t>0 && any(outsidePoint(1) == 0:w))
            p = 0; q = 1; r = h; 
            % means point is above top line and in range of window 
            closestLine = topLine;
        end
        
        if (b<0  && any(outsidePoint(1) == 0:w))
            p = 0; q = 1; r = 0;
            closestLine = bottomLine;
        end
        
        if (l<0  && any(outsidePoint(2) == 0:h))
            p = 1; q = 0; r = 0;
            closestLine = leftLine;
        end
        
        if (r>0  && any(outsidePoint(2) == 0:h))
            p = 1; q = 0; r = w;
            closestLine = rightLine;
        end
        
        
        m1 = (y2-y1)/(x2-x1);
        c1 = -m1*x1 + y1;
        
        o = inv([-m1 1; p q])*[c1;r];
        x = o(1);
        y = o(2);
    else
        x = nan;
        y = nan;
    end
end

function [o] = isInsideWindow(w, h, x, y)
    o = (x>0 && x<w) && (y>0 && y<h);
end