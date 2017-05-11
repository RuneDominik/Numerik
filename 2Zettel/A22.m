#programming task 2.2
#Author: Dominik, Rune (183727) and Geyer, Felix (183640)
disp("Task 2.2:")
x = single(0.8 : 1e-4 : 1.2);
figure(1);
plot(x, (x-1).^8)
y = (((((((x-8).*x+ 28).*x-56).*x+70).*x-56).*x+ 28).*x-8).*x+1 ;
figure(2);
plot(x,y)
disp("Die Abweichungen zwischen der Auswertung der linearisierten Form und")
disp("der Horner-Darstellung lassen sich dadurch erklaeren, das beim Horner")
disp("-Schemawiederholt Multiplikationen durchgeführt werden, wodurch sich, bedingt")
disp("durch die begrenzte Maschienengenauigkeit, Rundungsfehler verstärken.")
disp("Die begrentzte Mantissenlänge des Datentyps single verstärkt dies.")
disp("End task 2.2:")
