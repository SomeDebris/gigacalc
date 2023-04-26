function [node] = myConnectivityMat2Struct(C, names)
  for i = 1:length(names)
    neighbors = [];

    for j = 1:length(C(i,:))
      if C(i,j) == 1
	neighbors(end + 1) = j;
      end
    end
      
    node(i) = struct('name', names(i), 'neighbors', neighbors);
  end
end

