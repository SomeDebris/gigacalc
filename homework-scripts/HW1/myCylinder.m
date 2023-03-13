%% Calculates the surface area and volume of a cylinder given radius and height

function [S, V] = myCylinder(r, h)
    S = (2 * pi) * (r^2 + r * h);

    V = pi * r^2 * h;
end
