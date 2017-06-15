w = [1/6 , 4/6, 1/6];
p = [0, 1/2, 1];
N = 1000;
a = 0.5;
b = 1;
f = @(x) 1/x^2;

c = myQuadraturSum1D(f, w, p, a, b, N);