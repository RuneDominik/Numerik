function [v] = myQuadraturSum1D(f, w, p, a, b, N)
h = (b-a)/N;
# Teilintervalle bestimmen
for i = 1:N
  ak(i) = a + (i-1)*h;
  bk(i) = a + i*h; 
  endfor
# Anpassung der Stützstellen
n = length(p);
for i = 1:n
  phi(i) = (bk(i) - ak(i))/2 *p(i) + (bk(i) + ak(i))/2;
  endfor
# Anpassung Gewichte
for i = 1:n 
  g(i) = (b-a)/N *w(i)
  endfor
 # Quadratur mit bekannter Formel
 h = 0; 
for i = 1:N
  for k = ak(i):bk(i)
      h(i) = g(k)*f(phi(k));
    endfor
  endfor
 v = sum(h);
endfunction