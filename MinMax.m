clear; clc; format compact;
syms f(x,y) D(x,y)
assume(x, 'real'); assume(y, 'real');
f(x,y) = input('Give Function: ');
% Make the Partials and display them;
fx = diff(f(x,y), x); fy = diff(f(x,y), y); fxx = diff(fx, x); fxy = diff(fx, y); fyy = diff(fy, y); df = [fx fy fxx fxy fyy]'
%Get that Daddy D
D(x,y) = fxx.*fyy - fxy.^2 ;
% Solve for 0's;
eqns = [fx == 0 , fy ==0];
[x0, y0] = solve(eqns, [x y])
%The plug
disp('D(x0, y0): ')
D = D(x0, y0)
disp('fxx(x0, y0): ')
Fxx = subs(fxx, [x y], [x0 y0])
disp('f(x0, y0): ')
f = f(x0, y0)
%Graph boi
[x, y] = meshgrid(-15:.5:15 -15:.5:15);
mesh(x, y, f(x,y))