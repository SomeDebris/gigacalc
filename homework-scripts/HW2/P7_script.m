%% generates a plot of a cycloid.

r = 3;
theta = linspace(0, 2*pi, 1000);

x = r * (theta - sin(theta));
y = r * (1 - cos(theta));

plot(x,y)

grid on
title('Cycloid')
xlim([0 6 * pi])
