% Student: Alexandra Maximova
% Lineare Algebra HS2016
function y = factorial(n)

if n == 0 || n == 1
    y = 1;
else
    y = n * factorial(n-1);
end

end