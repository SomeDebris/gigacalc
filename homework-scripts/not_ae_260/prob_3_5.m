%% Problem 3/5
clear 

g = 9.807;
m_w = 60;
m_p = 9;
a = g/4;

wt = ( m_w + m_p ) * g;
F_elevator_on_woman_accel = ( m_w + m_p ) * a;
F_elevator_on_woman_total = F_elevator_on_woman_accel + wt;

R = F_elevator_on_woman_total


