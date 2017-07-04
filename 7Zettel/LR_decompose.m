function LR = LR_decompose(A)
N = size(A,1); 
LR = zeros(N);
for n=1:N-1
   % LR-Zerlegung
   A(n+1:N,n) = A(n+1:N,n)/A(n,n);
   A(n+1:N,n+1:N) = A(n+1:N,n+1:N) - A(n+1:N,n) * A(n,n+1:N);      
end
LR = A;
endfunction
