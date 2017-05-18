x = [0, 1/12, 1/6];
f = 5*sin(3*pi*x) + 36*x.^2;
#c = koeffizienten(f, x)
d = myNewtonInterpol(x, f);
e = myNewtonBase(1/24, x)