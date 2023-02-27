%% Problem 2

function [years] = mySavingPlan(P0, i, goal)
    y = 0;
    
    Pn = P0;

    while (Pn <= goal)
        y = y + 1;

        Pn = (1 + i) * Pn - 1;
    end

    years = y;
end
        
