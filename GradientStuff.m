function r = GradientStuff(f, P, Ui)
    syms x y z; format compact;
    fx = diff(f, x)
    fy = diff(f, y)
    fz = diff(f,z)
    if exist('P', 'var'),
        p =  P(1);%P(x)
        q =  P(2);%P(y)
        r =  P(3);%P(z)
        numFx = subs(fx, [x, y, z], [p, q, r])
        numFy = subs(fy, [x, y, z], [p, q, r])
        numFz = subs(fz, [x, y, z], [p, q, r])
        rate = norm([numFx numFy numFz])
        if exist('Ui', 'var'),
            Uf = Ui./norm(Ui)
            MAGdirU = dot([numFx numFy numFz], Uf)
        end
    end
    disp("I have no clue why there's an 'ans' displayed but you can probably just ignore that :) ")
end