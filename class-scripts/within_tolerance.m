function [is_within_tolerance] = within_tolerance(theoretical_value, actual_value, tolerance)
    upper_bound = theoretical_value + tolerance
    lower_bound = theoretical_value - tolerance

    is_within_tolerance = false;

    if (actual_value <= upper_bound) && (actual_value >= lower_bound)
        is_within_tolerance = true;
    else
        is_within_tolerance = false;
    end
end
