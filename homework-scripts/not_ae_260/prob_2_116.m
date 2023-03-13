%% problem 2/116
clear

d = 160;
v = 28;
h = 40;
theta = 40;

r = h / sind(theta);
phi = atand( h / ( d - r * cosd(theta) ) );
 
dist_A_to_current = [ d - r * cosd(theta), h ];
a = v^2 / ( 2 * norm(dist_A_to_current) )

a_r = -a * cosd( phi + theta );
a_theta = a * sind( phi + theta );
v_r = -v * cosd( phi + theta );
v_theta = v * sind( phi + theta );

r_dot = v_r
theta_dot = v_theta / r

r_dot2 = a_r + ( r * theta_dot^2 )
theta_dot2 = ( a_theta - ( 2 * r_dot * theta_dot ) ) / r
