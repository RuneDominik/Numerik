# Programm zur rekursiven Auswertung der Newton-Basispolynome an einer Stelle x 
# bei gegebenem Stützstellenvektor s
function [n]= myNewtonBase(x, s)
l = length(s);
n = 1:l;
  for k=1:l;
  n(k) = pol(x, s, k);
  end
end