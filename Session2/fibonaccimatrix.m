function fib = fibonaccimatrix(n)

A = [0,1;1,1];
x = [1;1];

y = A^n*x;

fib = y(1);
end