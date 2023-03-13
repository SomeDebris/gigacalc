%% problem 2/116
clear

d = 160;
v = 28;
h = 40;
theta = 40;

r = h / sind(theta);
phi = atand( h / ( d - r * cosd(theta)) );
 
dist_A_to_current = [ d - r * cosd(theta), h ];
a = v^2 / ( 2 * norm(dist_A_to_current) )

r_dot = -v * cosd( phi + theta )

theta_dot = ( v * sind( phi + theta ) ) / r


