# Programm zur Interpolation mit dem Newton-Verfahren
function c = myNewtonInterpol(x, f)
n = length(x);
c(1) = f(1);
for k=1:n-1;
c(k+1) = (f(k+1)-c(k))/(x(k+1)-x(k));
k = k +1;
end
#for j = 2 : n 
#   for k = 1 : n - j
#      c(k, j) = (c(k+1, j - 1) - c(k, j - 1))/(x(k+j) - x(k));
#   end
end
	