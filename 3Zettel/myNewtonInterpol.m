# Programm zur Interpolation mit dem Newton-Verfahren
function [c] = myNewtonInterpol(x, f)
n = length(x);
c(1) = f(1);
for k=1:n-1;
c(k+1) = (f(k+1)-c(k))/(x(k+1)-x(k));
k = k +1;
end