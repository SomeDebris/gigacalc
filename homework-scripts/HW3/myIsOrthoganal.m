function [out] = myIsOrthoganal(v1,v2,tol)
    theta = acos( dot(v1,v2) / (norm(v1) * norm(v2)) );

    out = abs(pi/2 - theta) < tol;
end
