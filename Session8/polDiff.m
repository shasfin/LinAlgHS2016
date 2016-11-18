function y = polDiff(u)
n = length(u);
y = (0:n-1) .* u;
y = y(2:n);
end