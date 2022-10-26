%% lets go

F1 = 5.5
F2 = 2
l = 6
w = 1.5
h = 2

de = [2*w; -l; h];
de = de/norm(de)

DEz = (F1+F2)
DE = (DEz*de)/de(3)

Mx = l*(-F1-F2)
My = w*(-F2)
Mz = 0
