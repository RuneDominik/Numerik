function [c] = myQuadratur1D (f, w, x);

#Anpassen der Gewichte auf das implizit durch x übergebene Intervall
  n = length(w);
  a = x(1);
  b = x(n);
  ak = w.*(b-a);

#Quadraturformel:
  c = 0;
  for i = 1:n
    c = c + ak(i)*f(x(i));
  endfor

endfunction
