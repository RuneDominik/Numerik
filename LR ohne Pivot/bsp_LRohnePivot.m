function bsp_LRohnePivot()
% Führt an einem Beispiel die LR-Zerlegung ohne Pivotisierung durch,
% berechnet für eine zufällige rechte Seite die Lösung des zugehörigen LGS,
% sowie das Residuum. Dann wird das Residuum ausgegeben.

% CALL: A = bsp_LRohnePivot().
% Numerische Mathematik 1, Sommersemester 2009.
% Institut fuer Angewandte und Numerische Mathematik, Karlsruhe.

N = 10;

for n = 1:N
    % Erzeuge zufällige Daten
    A = rand(n,n);
    b = rand(n,1);

    % Zerlege A
    B = LR_ohnePivot(A);

    % Löse LGS 
    x = loeseLGS_LRohnePivot(B,b);

    % Ausgabe der Norm des Residuums, um die Qualität der berechneten Lösung 
    % beurteilen zu können
    res = A*x-b;
    fprintf('%2d\t:\t%2g\n',n,norm(res));
end;

return;