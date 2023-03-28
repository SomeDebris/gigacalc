function [N,x] = myNumSols(A,b)
    if (size(A,2) > size(A,1))
        N = Inf;
        x = pinv(A) * b;
    else
        N = 1;

        x = A\b;

        if (size(x) == 0)
            N = 0;
        end
    end
end
