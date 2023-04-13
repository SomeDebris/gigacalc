%% Problem 3

function [p1, f1, p2, f2] = myCurveFitting(x,y)
    p1 = polyfit(x,y,1);
    p2 = polyfit(x,y,2);
    
    f1 = polyval(p1, x);
    f2 = polyval(p2, x);

    figure;
    hold on;
    title('Linear Fit Curve');
    xlabel('x values');
    ylabel('y values');
    plot(x, y, 'or');
    plot(x, f1, '-b');
    hold off;

    legend('Input Points', 'Fit Curve');

    figure;
    hold on;
    title('Quadratic Fit Curve');
    xlabel('x values');
    ylabel('y values');
    plot(x, y, 'or');
    plot(x, f2, '-b');
    hold off;

    legend('Input Points', 'Fit Curve');
end
