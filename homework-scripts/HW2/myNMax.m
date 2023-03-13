%% The start!

function [M] = myNMax(A,N)
    B = sort(A,'descend');

    M = B(1:N);
end

