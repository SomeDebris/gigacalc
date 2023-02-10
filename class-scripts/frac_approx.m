function [returnme] = frac_approx(target,tolerance)
    numerator = 1;
    denominator = 1;

    v = numerator / denominator;

    while (~within_tolerance(v,pi,tolerance))
        if (v == target)
            break;
        elseif (v > target)
            denominator += 1;
        else 
            numerator += 1;
        end

        v = numerator / denominator;
    end

    f_numerator = numerator;
    f_denominator = denominator;

    returnme = [f_numerator, f_denominator]
end

