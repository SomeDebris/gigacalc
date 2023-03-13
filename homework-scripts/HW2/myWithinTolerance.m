function [indices] = myWithinTolerance(A,a,tol)
    b = 0;

    indices = [];

    for i = 1:length(A)
        if (abs(A(i) - a) < tol)
            indices(end + 1) = i;
        end
    end
end
