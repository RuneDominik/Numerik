a = -1;
b = 1;
f = @(x) 1/(1+25*x^2);

# Trapezregel
w_Trapez = 0.5 * [1; 1];
p_Trapez = [0;1];

N = 1:1000;
e_Trapez = [];
  for n=1:N
  e_Trapez(n) = abs(myQuadraturSum1D(f, w_Trapez, p_Trapez, a, b, n));
  end
  c = sum(e_Trapez)