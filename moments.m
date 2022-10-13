function R = calc_moment(r,F,u)
    if (norm(u) ~= 1) 
        disp("Input 'u' is not a unit vector!");

        disp("Changing to:");

        u /= norm(u)
    end
    
    M = cross(r,F);

    R = dot(u,M);
end

function R = calc_moment(r,F)
    R = cross(r,F);
end

