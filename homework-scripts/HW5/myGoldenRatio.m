function [G] = myGoldenRatio(n)
  if (n == 1)
    G = 1;
  else
    G = 1 + 1 / (myGoldenRatio(n - 1));
  end
end

