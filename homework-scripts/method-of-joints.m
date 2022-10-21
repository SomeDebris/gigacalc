%%% initial hw
clear;

p1  = 196
p2  = 410
a   = 2.6

Ax  = p1
Cy  = (a * (p1 + p2)) / norm( cross([2*a;-a;0],[0;1;0]) )
Ay  = p2 - Cy


