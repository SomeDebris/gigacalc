function [response] = myCollisionChecking(x,y)

    checks = [
        y > x + 2;
        y > 1;
        y > -x + 2;
        y < -x - 2;
        y < -1;
        y < x - 2;
    ];

    if (sum(checks) > 0)
        response = 'normal'
    else
        response = 'alarm!'
    end
end
