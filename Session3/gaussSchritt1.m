function B = gaussSchritt1(A,b,p,j)
% A ist eine regul?re Koeffizientenmatrix
% b ist die rechte Seite
% p ist der Index der Pivotzeile, also A(p,p) ist das Pivot-Element
% j ist der Index der Zeile, ab welcher wir die Pivotzeile abziehen.

n = length(b);
% die letzte Spalte von B ist b. So m?ssen wir keinen zus?tzlichen Befehl
% schreiben, um b entsprechend zu ?ndern.
B = [A,b];

factor = B(j,p)/B(p,p);
for i = 1:n+1
    B(j,i) = B(j,i)-factor*B(p,i);
end
end