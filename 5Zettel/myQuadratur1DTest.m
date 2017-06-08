#Bekannte Quadraturgewichte für n=1,2,3 aus dem Theorieteil
w1 = [1/2 , 1/2];
w2 = [1/6 , 4/6, 1/6];
w3 = [1/8 , 3/8, 3/8, 1/8];

#Quadraturpunkte für n=1,2,3 auf (0.5, 1) nach der Newton-Cotes-Formel
x1 = [1/2 , 1];
x2 = [2/4 , 3/4 , 1];
x3 = [1/2 , 2/3 , 5/6 , 1];

#Function-Handle
f = @(x) 1/x^2;

#Quadratur
disp("Trapezregel (n=1):")
I1 = myQuadratur1D(f, w1, x1)
disp("Simpsonregel (n=2):")
I2 = myQuadratur1D(f, w2, x2)
disp("Newtons 3/8 Regel (n=3):")
I3 = myQuadratur1D(f, w3, x3)
