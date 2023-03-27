function [M1,M2] = mySplitMatrix(M)
    M_size = size(M)
    M1 = M
    M2 = M

    M1(:, (ceil(1 + M_size(2)/2):M_size(2)) ) = []
    M2(:, (1:ceil(M_size(2)/2)) ) = []
end
