function [o] = isInsideWindow(w, h, x, y)
    o = (x>0 && x<w) && (y>0 && y<h);
end