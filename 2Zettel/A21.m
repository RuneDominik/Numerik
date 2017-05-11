#Programming task 2.1. For the exponential functions series expantion see "expsum.m".
#Author: Dominik, Rune (183727) and Geyer, Felix (183640)
disp("Task 2.1:")
format long
n = 5;
disp("Part a)")
while n<=35
  s = expsum(-7, n)
  n = n + 5;
  end
disp("Part b)")
n = 5;
while n<=35
  s = 1 / expsum(7, n)
  n = n + 5;
  end
disp("Part c)")
n = 5;
while n<=35
  s = (expsum(-1, n))^(7)
  n = n + 5;
  end
format short
disp("Es zeigt sich die deutlich schnellere Konvergenz der letzten beiden Methoden")
disp("verglichen mit der ersten.")
disp("End task 2.1")
