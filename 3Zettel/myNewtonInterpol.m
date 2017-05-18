# Programm zur Interpolation mit dem Newton-Verfahren. Dieses Programm bestimmt
# die Koeffizienten des Newton-Interploationspolynom. Übergeben werden der
# Funktion ein Stützstellenvektor x und die dazu gehörigen y-Werte f
function [c] = myNewtonInterpol(x, f)
n = length(x);
B(:,1) = transpose(f);
  for k=2:n;
    for l=1:n-k+1;
      B(l,k) = (B(l+1,k-1) - B(l, k-1)) ./ (x(l+k-1) - x(l));
    end
  end
  c = B(1,:);
end
