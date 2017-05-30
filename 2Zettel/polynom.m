function y = polynom(x,s,c)
% Auswertung des Polynoms mit den Koeffizienten c_i durch modifiziertes Hornerschema
	n = length(s)
  a = 1;
  y = 0;
  for k = 1:n+1
    for j = 1:k
      y = a*(x-s(j))
    end
    y = y + c(k)*
  end
end 