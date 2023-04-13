%% problem 5

function [dy, X] = myNumDiff(f, a, b, n, option)
    x_space = linspace(a,b,n);
    f_space = f(x_space);
    
    switch (option)
        case 'forward'
            dy = diff( f_space );

            X = x_space( 1:(end-1) );
        case 'backward'
            dy = diff( f_space );

            X = x_space( 2:(end) );
        case 'central'

            if (length(f_space) - 2 < 0)
                print('Can''t compute center derivative! length too small.');
                return;
            end

            for i = 1:(length(f_space) - 2)
                dy(i) = (f_space(i + 2) - f_space(i)) / 2;
            end

            X = x_space( 2:(end-1) );
        otherwise
            print('you didn''t specify an `option`! Please do so.');
            return;
    end
end

