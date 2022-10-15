function R = calc_moment(r,F,u)
    M = cross(r,F);

    if exist('u', 'var'),
        if (norm(u) ~= 1) 
            disp("Input 'u' is not a unit vector!");

            disp("Changing to:");

            u /= norm(u)
        end

        R = dot(u,M);
    else
        R = M;
end

