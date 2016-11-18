function y = mydouble(f,x)
y = f(f(x));

end

% wenn man es aufrufen will:
% definiere function Handle:
% f = @(x) x^2;
% rufe mydouble auf
% mydouble(f,x);