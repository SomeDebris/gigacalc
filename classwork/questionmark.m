x = linspace(0,2*pi,n);
y = sin(x);
x_range_target = 2 * (pi / 3) <= x && x <= 4 * (pi / 3);
y += y + x_range_target * (0.1 * rand(1));
