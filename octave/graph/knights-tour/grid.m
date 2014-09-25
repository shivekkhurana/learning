classdef Grid
    properties
        blocks
        height
        width
    end

    methods

        function [] = Grid (height, width)
            Grid.height = height;
            Grid.width = width;
        end

        function [blocks] = blocksByCooridnates (coordinates)
            % give a list of coordinates, return block objects
            blocks  = [];
        end

        function [canMove] = canMoveToBlockAddress (address)
            canMove = false;
            if (address(1) > 0 || address(2) < 0)

            end
        end        
    end
end