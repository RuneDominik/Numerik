function A = LR_ohnePivot(A)
% LR-Zerlegung ohne Pivotisierung der Matrix A, L und R in A gespeichert
% werden, mit Ausnahme der Diagonalen von L.

% CALL: A = LR_ohnePivot(A).
% Input:
%   A ... quadratische Matrix
% Output:
%   A ... R ist gegeben durch R = triu(A), L durch L = A-R +eye(N)
% Numerische Mathematik 1, Sommersemester 2009.
% Institut fuer Angewandte und Numerische Mathematik, Karlsruhe.

% Initialisierung
N = size(A,1); 

for n=1:N-1
   if abs(A(n,n))<eps 
      error('*** ERROR *** LR-Zerlegung existiert nicht');
   end;
   % LR-Zerlegung
   A(n+1:N,n) = A(n+1:N,n)/A(n,n);
   A(n+1:N,n+1:N) = A(n+1:N,n+1:N) - A(n+1:N,n) * A(n,n+1:N);      
end;



