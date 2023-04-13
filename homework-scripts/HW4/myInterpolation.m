%% Problem 4

function [vq1, vq2] = myInterpolation(x, y)
    xq = -3:0.1:9;

    vq1 = interp1(x,y,xq);
    vq2 = spline(x,y,xq);

    figure;
    hold on;
    title('Linear Interpolation');
    xlabel('x values');
    ylabel('y values');
    plot(x, y, 'or');
    plot(xq, vq1, '-b');
    hold off;

    figure;
    hold on;
    title('Spline Interpolation');
    xlabel('x values');
    ylabel('y values');
    plot(x, y, 'or');
    plot(xq, vq2, '-b');
    hold off;
end
