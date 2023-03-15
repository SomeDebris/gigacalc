%% 3/65

t = 32 * 1000;
r = 9.6 * 1000;
v = 3 * 1000;
g = 6;
m = 2000;
theta = 30;

e_t = [ sind( theta ), cosd( theta ) ];
e_g = [ 0, -1 ];
g_vec = g * e_g;

R = r * -e_t;
T = t * e_t;
wt = m * g_vec;

F_net = R + T + wt;
a_net = F_net ./ m;

a_n = g * sind(theta)
norm(a_net)

% v^2 / a_n
