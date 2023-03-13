%%

function [out] = myIsPrime(n)
    divide_test = 1:n;

    num_divisible = sum( rem(n,divide_test) == 0 );

    if (num_divisible == 2)
        out = 1;
        return;
    else
        out = 0;
        return;
    end
end
