function R = MinMax(pp)
    syms f(x,y) D(x,y) fxx(x,y)
    assume(x, 'real'); assume(y, 'real');
    f(x,y) = pp
    % Make the Partials and display them;
        fx = diff(f(x,y), x)
        fy = diff(f(x,y), y)
        fxx(x,y) = diff(fx, x)
        fxy = diff(fx, y)
        fyy = diff(fy, y)
    %Get that Daddy D
        D(x,y) = fxx(x,y).*fyy - fxy.^2 ;
    % Solve for 0's;
        eqns = [fx == 0 , fy ==0];
        [x0, y0] = solve(eqns, [x y]); crit = [x0 y0]
    %The plug
    disp('Values at the critical points: ')
        Dc = D(x0, y0)
        fc = f(x0, y0)
        fxxc = fxx(x0,y0)
    %Ima do it
        figure('Name','Idk if this will work at all')
        [x, y] = meshgrid(-100:100, -100:100); mesh(x, y, f(x,y))
end
