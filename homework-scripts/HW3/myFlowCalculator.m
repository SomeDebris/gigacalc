function [f] = myFlowCalculator(S,d)

    eqs = [
        -1  0  0  0  0  0  0
         0  0  0 -1 -1  0  0
         0  0 -1  1  0 -1  0
         0  0  0  0  1  0 -1
         0  1  0  0  0  0  0
         1 -1  1  0  0  0  0
         0  0  0  0  0  1  1
         ];

    b = [
        -S(1)
        -S(2)
        d(1)
        d(2)
        d(3)
        d(4)
        d(5)
        ];

    f = (eqs\b)';
end

