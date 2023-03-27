function [y] = myFilterMatrix(x,b)
    im_y = x(x > b);
    y = im_y(:);
end
    
