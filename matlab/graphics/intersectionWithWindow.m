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