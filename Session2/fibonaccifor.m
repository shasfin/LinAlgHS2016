function fib = fibonaccifor(n)

fib0 = 1;
fib1 = 1;
if n == 0
    fib = fib0;
else
    for i = 1:n
        fib1 = fib0 + fib1;
        fib0 = fib1 - fib0;
    end
fib = fib0;
end

end