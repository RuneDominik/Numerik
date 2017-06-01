function [y] = newtonhorner(x,c,z)
# Auswerten des Newtonpolynoms mit Stützstellen x, Koeffizienten der Newtonpolynome c
# an den Stellen z
n = length(x);
y = c(n)*ones(size(z));
for k = n-1:-1:1
  y = (z-x(k)).*y+c(k);
endfor
endfunction
