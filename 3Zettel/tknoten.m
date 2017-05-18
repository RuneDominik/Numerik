#Bestimmung der Tschebyscheff-Knoten
function x = tknoten(n)
x = 0:n
for a=0:n
  x(a+1) = cos((2*a+1)*pi/(2*n+2));
  a = a+1;
endfor
end
