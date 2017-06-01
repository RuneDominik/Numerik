function [c] = myPiecewiseInterpol(x,y,xEval)

# Längen der Intervalle bestimmen:
l = length(xEval);
n = length(x);

#Steigung m und y-Achsenabschnitt y bestimmen:
for i=1:(n-1)
  m(i) = (y(i+1)-y(i))/(x(i+1)-x(i));
  b(i) = (y(i)-m(i)*x(i));
endfor

#Bestimmen der Werte der Interpolation an den Stellen xEval:
for k = 1:l # läuft durch xEval
  for i=1:n-1 # läuft durch x
    #Fall 1: x(i) ist gleich xEval(k) -> setze c = y(i)
    if (xEval(k) == x(i))
     c(k) = y(i);
     break
    endif
    #Fall 2: x(i) liegt in einem Intervall zwischen Stützstellen. Dann wird c als
    #Funktionswert auf der Gerade bestimmt
    if (xEval(k) <= x(i+1))
     c(k) = m(i)*xEval(k)+b(i);
     break
    endif
  endfor
endfor

endfunction
