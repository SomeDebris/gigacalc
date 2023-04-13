%% problem 6

function [I] = myNumInt(f, a, b, n, option)
    x_space = linspace(a,b,n);
    f_space = f_space;

    switch (option)
        case 'left'
             
        case 'right'
        case 'middle'
        case 'trap'
        otherwise
            print('bad `option`: %s', option);
            return;
    end
