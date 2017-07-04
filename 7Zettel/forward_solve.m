function y = forward_solve(LR,b)
[m,n] = size(LR);
x=zeros(n,1);
x(1) = b(1)/LR(1,1);
for i = 2:1:m
x(i) = (b(i)-LR(i,1:i-1)*x(1:i-1))/LR(i,i);
end
y = x; 
endfunction