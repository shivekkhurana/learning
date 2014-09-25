classdef Block
    properties
        x
        y
        visited = false;
    end

    functions 

        function reachableCoordinates [coordinates] = function (grid)
            coordinates = [];
        end  

        function [blocks] = reachable (grid) 
            blocks = grid.blocksByCoordinates();
        end 
    end
end