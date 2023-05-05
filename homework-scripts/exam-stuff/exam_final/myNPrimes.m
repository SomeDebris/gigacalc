function [primes] = myNPrimes(N)
    primes = [];
    current_number = 0;

    while length(primes) < N
        current_number = current_number + 1;
        
        if (current_number == 1)
            continue
        end
        
        divisibles = [];

        for i = 1:current_number
            if (rem(current_number, i) == 0)
                divisibles(end + 1) = i;
            end
        end

        if (length(divisibles) == 2)
            primes(end + 1) = current_number;
        end
    end
end
