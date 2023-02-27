function [boundedA] = myBoundingArray(A, top, bottom)
    B = (bottom < A) == (top > A);
    C = A >= top;
    D = A <= bottom;

    boundedA = (A .* B) + (C .* top) + (D .* bottom);
end
