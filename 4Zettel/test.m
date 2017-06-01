#Test für Aufgabe a)
x =[0 1 2 ];
y=exp(x);
xEval=[0:0.5:2];
c = myPiecewiseInterpol(x, y, xEval)

#Aufgabe b)
n = [2 4 8 16 32 64 128 ]
x1 = 0:n(1);
x2 = 0:n(2);
x3 = 0:n(3);
x4 = 0:n(4);
x5 = 0:n(5);
x6 = 0:n(6);
x7 = 0:n(7);


for i = 1:n(1)+1
  x1(i) = (-1) + (2*i)/n(1);
endfor
for i = 1:n(2)+1
  x1(i) = (-1) + (2*i)/n(2);
endfor
for i = 1:n(3)+1
  x1(i) = (-1) + (2*i)/n(3);
endfor
for i = 1:n(4)+1
  x1(i) = (-1) + (2*i)/n(4);
endfor
for i = 1:n(5)+1
  x1(i) = (-1) + (2*i)/n(5);
endfor
for i = 1:n(6)+1
  x1(i) = (-1) + (2*i)/n(6);
endfor
for i = 1:n(7)+1
  x1(i) = (-1) + (2*i)/n(7);
endfor

y12 = 1./(1+((x1).^2).*25);
y22 = 1./(1+((x2).^2).*25);
y32 = 1./(1+((x3).^2).*25);
y42 = 1./(1+((x4).^2).*25);
y52 = 1./(1+((x5).^2).*25);
y62 = 1./(1+((x6).^2).*25);
y72 = 1./(1+((x7).^2).*25);


m=100;
Delta = 0:m;
for i = 0:length(Delta)-1
  Delta(i+1) = (-1)+(2*i)/m ;
endfor

ELinEmponential1 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x1, exp(x1), Delta) )) )
ELinEmponential2 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x2, exp(x2), Delta) )) )
ELinEmponential3 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x3, exp(x3), Delta) )) )
ELinEmponential4 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x4, exp(x4), Delta) )) )
ELinEmponential5 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x5, exp(x5), Delta) )) )
ELinEmponential6 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x6, exp(x6), Delta) )) )
ELinEmponential7 = max( sqrt( ( exp(Delta) - myPiecewiseInterpol(x7, exp(x7), Delta) )) )
