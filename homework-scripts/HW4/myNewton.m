%% problem 2

function [R,E] = myNewton(f, df, x0, tol)
    R = [];
    E = [];

    x_n = x0;

    for i = 1:100000
        R(i) = x_n;
        E(i) = abs( f(R(i)) );

        if (E(i) < tol)
            break;
        end

        x_n = x_n - (f(x_n) / df(x_n));
    end
end
