function B = gaussSchritt4(A,b,p)
% A ist eine regul?re Koeffizientenmatrix
% b ist die rechte Seite
% p ist der Index der Pivotzeile, also A(p,p) ist das Pivot-Element
% Annahme: A ist bis zur p-ten Zeile in Dreiecksform
% und die Zeilen unter p an den richtigen Stellen Nullen haben
% Nach der Ausf?hrung des Programmes B ist bis zur Zeile {p+1} in
% Dreiecksform und B(p+1:end,1:p) besteht aus Nullen.

n = length(b);
B = [A,b];

% wende gaussSchritt2 auf jede Zeile unter der Pivot-Zeile an
% for j = p+1:n
% factor = B(j,p)/B(p,p);
% B(j,:) = B(j,:) - factor*B(p,:);
% end
% Anstatt einer for-Schleife, kann man das ganze auf eine Untermatrix
% anwenden.
% Bemerke, dass wir haben einfach 'j' mit 'p+1:n' ersetzt
% factor ist jetzt ein Vektor
factor = B(p+1:n,p)/B(p,p);
B(p+1:n,:) = B(p+1:n,:) - factor*B(p,:);

end