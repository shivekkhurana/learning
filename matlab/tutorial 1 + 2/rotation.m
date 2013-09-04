function [ap] = rotation(a, t)
    m = [cos(t) sin(t); -sin(t) cos(t)];
    ap = m * a;
end
