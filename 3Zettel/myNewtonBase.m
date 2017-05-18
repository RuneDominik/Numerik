# Programm zur Bestimmung der Newton-Basis
function [n]= myNewtonBase(x, s)
l = length(s);
n = 1:l;
  for k=1:l;
  n(k) = pol(x, s, k);
  end
end