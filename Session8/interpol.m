function a = interpol(x,y)
n = lenght(x);

% generate matrix A
A = ones(n);

for j = 2:n
    A(:,j) = A(:,j-1)*(x - x(j-1));
end

% solve system
a = A\y;

end