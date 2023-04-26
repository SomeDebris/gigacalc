function [nRoots, r] = myNRoots(a,b,c)
  % use the quadratic formula, my friend!

  if (b^2 == (4 * a * c))
    nRoots = 1;
  elseif (b^2 > (4 * a * c))
    nRoots = 2;
  else
    nRoots = -2;
  end

  sqrt_term = sqrt(b^2 - (4 * a * c));

  if (nRoots ~= 1)
    r(1) = ( -b + sqrt_term ) / (2 * a);
    r(2) = ( -b - sqrt_term ) / (2 * a);
  else
    r = ( -b ) / (2 * a);
  end
end
