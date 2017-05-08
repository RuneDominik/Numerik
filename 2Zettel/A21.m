#Programming task 2.1. For the exponential functions series expantion see "expsum.m".
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
disp("End task 2.1")
