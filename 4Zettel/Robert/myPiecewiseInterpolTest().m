#Teil a)
x = [0 1 2];
y = exp(x);
xEval = 0 : 0.5 : 2;
c = myPiecewiseInterpol(x,y,xEval);
c

# Teil b)

#Definition der Funktionen:

f1 = @(x) 1./(1+25.*x.^2);
f2 = @(x) exp(x);

#Gitter berechnen:

n=100
g = 1:n
for i = 0:n
  g(i+1) = -1+(2*i)/n ;
end

#Bestimmen der stückweisen Interpolation (bis n = 128)

for i = 1:7
  n = 2**i;
  disp('Anzahl der Stützstellen:'), n

  disp('Fehler der stückweisen Interpolation für die Expotential Funktion:')
  es = max(abs(f2(g) - myPiecewiseInterpol(f2(stuetz(n)),stuetz(n),g)))

  disp('Fehler der stückweisen Interpolation für die Runge Funktion:')
  es = max(abs(f1(g) - myPiecewiseInterpol(f1(stuetz(n)),stuetz(n),g)))

endfor

#Bestimmen der polynomiellen Interpolation (bis n = 16)

for i = 1:4
  n = 2**i;
  disp('Anzahl der Stützstellen:'), n#

  disp('Fehler der polynomielle Interpolation für die Expotential Funktion:')
  ei = max(abs(f2(g) - newtonhorner(stuetz(n),newtonkoeffi(stuetz(n),f2(stuetz(n))),g)))

  disp('Fehler der polynomielle Interpolation für die Runge Funktion:')
  ei = max(abs(f1(g) - newtonhorner(stuetz(n),newtonkoeffi(stuetz(n),f1(stuetz(n))),g)))

endfor

#Fehler der stückweisen Interpolation für ein n>n_max

disp('Fehler der stückweisen Interpolation für 200 Stützstellen:')
    n=200;
    es = max(abs(f2(g) - myPiecewiseInterpol(f2(stuetz(n)),stuetz(n),g)))
