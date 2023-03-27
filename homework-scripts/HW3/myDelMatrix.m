function [M] = myDelMatrix(x)
    x_size = size(x);

    M = x;

    M(x_size(1), :) = [];
    M(:, x_size(2)) = [];
end
