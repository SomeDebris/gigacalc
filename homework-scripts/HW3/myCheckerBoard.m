function [M] = myCheckerBoard(n)
    seed = ones(n) .* (1:n);

    compseed = seed + seed' + 1;

    M = mod(compseed,2)
end
