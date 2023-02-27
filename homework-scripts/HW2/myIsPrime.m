%%

function [out] = myIsPrime(n)
    out = any(primes(n) == n);
end
