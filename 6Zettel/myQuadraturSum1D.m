function [v] = myQuadraturSum1D(f, w, p, a, b, N)
h = (b-a)/N;
# Teilintervalle bestimmen
#for i = 1:N
#  ak(i) = a + (i-1)*h;
#  bk(i) = a + i*h;
#  endfor
# Anpassung der Stützstellen
n = length(p);
#for i = 1:n
 # phi(i) = (bk(i) - ak(i))/2 *p(i) + (bk(i) + ak(i))/2;
  #endfor
# Anpassung Gewichte
#for i = 1:n 
 # g(i) = (bk(i)-ak(i))/N *w(i);
  endfor
 # Quadratur mit bekannter Formel
 p = p * h;
 m = 0; 
for i = 1:N
  for k = 1:length(p)
      m = m + h* w(k) *f (a + (i-1) * h + p(k));
    end
  end
 v = m;
endfunction