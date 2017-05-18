#Bestimmung der äquidistanten Knoten
function x = aknoten(n)
x = 0:n
for a=0:n
  x(a+1) = -1+(2/n)*a;
  a = a+1;
endfor
end
