%% calculates tips or something

function [tip] = myTipCalc(bill, party)
    tip_percentage = 0.00;

    if party <= 0
        tip = -1;
        return
    elseif party < 6
        tip_percentage = 0.15;
    elseif party < 8
        tip_percentage = 0.18;
    elseif party < 11
        tip_percentage = 0.20;
    else
        tip_percentage = 0.25;
    end

    tip = bill * tip_percentage;  
end
        
