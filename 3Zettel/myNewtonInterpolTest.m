n  = [7, 12, 17]
fa1 = 1 / (1+25.*aknoten(n(1)))
fa2 = 1 / (1+25.*aknoten(n(2)))
fa3 = 1 / (1+25.*aknoten(n(3)))

ft1 = 1 / (1+25.*tknoten(n(1)))
ft2 = 1 / (1+25.*tknoten(n(2)))
ft3 = 1 / (1+25.*tknoten(n(3)))

ca1 = myNewtonInterpol(aknoten(n1), fa1)
ca2 = myNewtonInterpol(aknoten(n2), fa2)
ca3 = myNewtonInterpol(aknoten(n3), fa3)

ct1 = myNewtonInterpol(tknoten(n1), ft1)
ct2 = myNewtonInterpol(tknoten(n2), ft2)
ct3 = myNewtonInterpol(tknoten(n3), ft3)

#na1 = myNewtonBase(intervall

x = -1:1e-4:1
figure(1)
plot(x, 1 / (1+25.*x), "g-")
plot(aknoten(n1), fa1, "r*")
plot(tknoten(n1), ft1, "b*")
figure(2)
plot(x, 1 / (1+25.*x), "g-")
plot(aknoten(n2), fa2, "r*")
plot(tknoten(n2), ft2, "b*")
figure(3)
plot(x, 1 / (1+25.*x), "g-")
plot(aknoten(n3), fa3, "r*")
plot(tknoten(n3), ft3, "b*")