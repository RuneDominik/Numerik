function [c] = newtonkoeffi(x,y)
# Bestimmen der Newtonkoeffizienten c
n = length(x);
c = y;
for k=1:n-1
  c(k+1:n) = (c(k+1:n) - c(k)./(x(k+1:n)-x(k)));
endfor
endfunction
