function [S] = myInsideTriangle(x,y)
    P1 = [0,0];
    P2 = [1,0];
    P3 = [0,1];

    is_inside_triangle = false;
    is_on_border = false;
    is_out_of_bounds = false;
    is_outside_triangle = false;

    if (x > 1 || x < 0)
        is_out_of_bounds = true;
    elseif (y > 1 || y < 0)
        is_out_of_bounds = true;
    end

    if is_out_of_bounds


    if (y + x == 1 || x == 0 || y == 0)
        is_on_border = true;
    end

    if is_on_border
        S = 'border'
        return
    end

    if (y + x < 1)
        is_inside_triangle = true;
    end
