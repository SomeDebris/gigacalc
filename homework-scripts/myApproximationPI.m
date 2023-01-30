%% Function that calculates pi using Ramanujan's forumula
% N : number of iterations in calculation. more iterations
%     means greater accuracy and greater execution time.

function [mypi] = myApproximationPI(N)
    format long

    summation_multiplier = (2 * sqrt(2)) / 9801;

    k = 0:N;

    summation_numerator = (factorial(4 .* k) .* (1103 + 26390 .* k));

    summation_denominator = ((factorial(k) .^ 4) .* 396 ^ (4 .* k));

    summation_result = sum(summation_numerator ./ summation_denominator);

    mypi = 1 / (summation_multiplier * summation_result);
end
