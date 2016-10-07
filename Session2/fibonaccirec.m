% Studentin: Alexandra Maximova
% Lineare Algebra HS2016
% Uebungsstunde 2
function fib = fibonaccirec(n)
%% Berechnet rekursiv die n-te Fibonacci-Zahl

if n == 0 || n == 1
    fib = 1;
else
    fib = fibonaccirec(n-1) + fibonaccirec(n-2);
end

end