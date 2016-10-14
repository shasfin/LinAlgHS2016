function B = gaussSchritt5(A,b)
% A ist eine regul?re Koeffizientenmatrix, die keine Zeilenvertauschungen
% ben?tigt
% b ist die rechte Seite
% Nach der Ausf?hrung des Programmes B ist in Dreiecksform

n = length(b);
B = [A,b];

% wende gaussSchritt4 iterativ an, beginne mit p=1
for p = 1:n
factor = B(p+1:n,p)/B(p,p);
B(p+1:n,:) = B(p+1:n,:) - factor*B(p,:);
end
% diese for-Schleife k?nnen wir nicht durch Operationen an Untermatrizen
% ersetzen. Warum?
end