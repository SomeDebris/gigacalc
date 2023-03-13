% I use long variable names because it explains
% without comments exactly what the code is doing.

function [S] = myInsideTriangle(x,y)
    is_inside_triangle = false;
    is_inside_or_on_border = false;
    is_on_border = false;
    is_outside_triangle = false;

    if (x + y < 1 && x > 0 && y > 0)
        is_inside_triangle = true;
    end

    if (x + y <= 1 && x >= 0 && y >= 0)
        is_inside_or_on_border = true;
    end

    if (~is_inside_triangle && is_inside_or_on_border)
        is_on_border = true;
    end

    if (~is_on_border && ~is_inside_triangle)
        is_outside_triangle = true;
    end

    if is_on_border
        S = 'border';
    elseif is_inside_triangle
        S = 'inside';
    else
        S = 'outside';
    end
end
