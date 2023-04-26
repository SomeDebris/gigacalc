function [area, perimeter] = rectInfo(w, l)
  if (nargin < 2)
    area = -1;
    perimeter = -1;
  else
    area = w * l;
    perimeter = 2 * w + 2 * l;
  end
end
