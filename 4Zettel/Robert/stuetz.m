#Berechnen des Gitters
function [x] = stuetz(n)
for i = 0:n
  x(i+1) = (-1)+(2*i)/n;
endfor
endfunction
