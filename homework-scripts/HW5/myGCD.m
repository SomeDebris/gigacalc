function [gcd] = myGCD(a,b)
  if (a == 0)
    gcd = b;
  elseif (b == 0)
    gcd = a;
  else
    gcd = myGCD(b, rem(a,b));
  end
end
