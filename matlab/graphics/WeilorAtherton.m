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