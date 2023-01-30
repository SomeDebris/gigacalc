%% Function that calculates pi using Ramanujan's forumula
% N : number of iterations in calculation. more iterations
%     means greater accuracy and greater execution time.

function [mypi] = myApproximationPI(N)
    format long

    summation_multiplier = (2 * sqrt(2)) / 9801;

    summation_result = 0;

    for k = 0:N
        k
        summation_result += (factorial(4 * k) * (1103 + 26390 * k)) / ((factorial(k) ^ 4) * 396 ^ (4 * k))
    end

    mypi = summation_multiplier * summation_result;
end
