function x = loeseLGS_LRohnePivot(A,b)
% Löse das LGS Ax=b mit der LR-Zerlegung ohne Pivotisierung.

% CALL: x = loeseLGS_LRohnePivot(A,b)
% Input: 
%   A ... Matrix, schon LR-zerlegt
%   b ... rechte Seite
% Output:
%   x ... Lösung des LGS
% Numerische Mathematik 1, Sommersemester 2009.
% Institut fuer Angewandte und Numerische Mathematik, Karlsruhe.

N = size(A,1);

x = b;

for n=2:N
   x(n) = x(n) - A(n,1:n-1) * x(1:n-1);
end;

x(N) = x(N)/A(N,N);

for n=N-1:-1:1
    x(n) = (x(n) - A(n,n+1:N)*x(n+1:N))/A(n,n);
end;

