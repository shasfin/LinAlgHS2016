%Author: Cédric Stoll

function B = hoch(A,k)
%HOCH Berechnet A^k
B = eye(size(A,1));         % init resultat mit identität der Grösse von A

while k > 0                 % solange exponent > 0
    if mod(k,2) == 1        % wenn k ungerade
        B = B * A;          % A zum output hinzufügen
    end
    k = floor(k / 2);       % bit shift rechts
    A = A * A;              % A = A^2
end

% COMMENT:
% +) computes matrix power
% +) name and comments
% -) no safety checks
% +) used the template from the exercise sheet
% +) no recursion
% 5/5
