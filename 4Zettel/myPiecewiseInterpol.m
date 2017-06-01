function [yEval] = myPiecewiseInterpol(x, f, xEval);

#Steigung der linearen Regressionen in den Intervallen bestimmen

  nx = length(x);
  m = 1:(nx-1);
  for i = 1:(nx-1)
    m(i) = (f(i+1)-f(i))/(x(i+1)-x(i));
  endfor

#Bestimmen, in welchem Intervall sich welcher Wert von xEval befindet

nev = length(xEval);
I = 1:nev+1;
for i = 1:nev
  for j = 1:(nx-1)
    if xEval(i)>=x(j) && xEval(i)<x(j+1);
      I(i) = j;
    else
    endif
  endfor
  if i == nev
    I(i) = I(i-1);
  else
  endif
endfor

#y-Achsenaschnitte in den Intervallen bestimmen

b = 1:(nx-1);
for i = 1:(nx-1)
  b(i) = f(i) - m(i) * x(i);
endfor

#Bestimmen der Funktionswerte von xEval

yEval = 1:nev;
 for i = 1:nev
    p = I(i);
    yEval(i) = m(p) * xEval(i) + b(p);
 endfor

end
