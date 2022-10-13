clc; clear; format compact;

disp('Calculates things to do with Gradients.');

syms x y z

f = input('Give function ')    ;%Function
fx = diff(f, x)
fy = diff(f, y)
fz = diff(f, z)

p =  input('Give x val ')  ;%P(x)
q =  input('Give y val ')  ;%P(y)
r =  input('Give z val ')  ;%P(z)
numFx = subs(fx, [x, y, z], [p, q, r])
numFy = subs(fy, [x, y, z], [p, q, r])
numFz = subs(fz, [x, y, z], [p, q, r])

rate = norm([numFx numFy numFz])

Ui = input('Give U vector (as vector [a b c] ');

Uf = Ui./norm(Ui)

DIRu = dot([numFx numFy numFz], Uf)
