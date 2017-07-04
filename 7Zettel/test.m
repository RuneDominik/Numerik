A = [4 -1 2; -8 7 3; 24 -26 -13];
b = [1 2 3];
LR = LR_decompose(A)
y = forward_solve(LR, b)
x = backward_solve(LR, y)