function [y] = myChebyshevPoly2(n,x)
  y = [];
  for i = 1:length(x)
    if (n == 0)
      y(end+1) = 1;
    elseif (n == 1)
      y(end+1) = 2 * x(i);
    else
      y(end+1) = (2 * x(i) * myChebyshevPoly2(n - 1, x(i))) - myChebyshevPoly2(n - 2, x(i));
    end
  end
end

