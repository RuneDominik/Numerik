function x=backward_solve(LR,y)
x=zeros(n,1);
[m,n] = size(LR);
y(m) = y(m)/LR(m, m)
for i = n-1:-1:1
  y(i) = ()
end
x = y;
endfunction
