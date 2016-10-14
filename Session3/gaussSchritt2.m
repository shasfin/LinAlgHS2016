function B = gaussSchritt2(A,b,p,j)
% A ist eine regul?re Koeffizientenmatrix
% b ist die rechte Seite
% p ist der Index der Pivotzeile, also A(p,p) ist das Pivot-Element
% j ist der Index der Zeile, ab welcher wir die Pivotzeile abziehen.
% result ist die ver?nderte j-te Zeile mit ver?nderter rechter Seite

n = length(b);
B = [A,b];

factor = B(j,p)/B(p,p);
% Anstatt von der for-Schleife, k?nnen wir in Matlab mit ganzen Zeilen
% arbeiten
% for i = 1:n+1
%     result(i) = B(j,i)-B(p,i)*factor;
% end
B(j,:) = B(j,:) - factor*B(p,:);
end