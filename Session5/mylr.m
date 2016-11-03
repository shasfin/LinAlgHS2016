function [L,R] = mylr(A)
% A ist eine regul?re Koeffizientenmatrix, die keine Zeilenvertauschungen
% ben?tigt
% Nach der Ausf?hrung des Programmes L ist eine Linksdreieckmatrix mit
% Einser auf der Diagonale, R ist eine Rechtsdreiecksmatrix und es gilt
% A = L*R.

n = length(A);
R = A;
L = eye(n);

% modifiziere gaussSchritt5 so dass die Faktoren in L gespeichert werden
for p = 1:n
L(p+1:n,p) = R(p+1:n,p)/R(p,p);
R(p+1:n,:) = R(p+1:n,:) - L(p+1:n,p)*R(p,:);
end

end