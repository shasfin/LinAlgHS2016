% Studentin: Alexandra Maximova

function B = hochlin(A, k)

if k == 0
    B = eye(size(A));
else
    B = A*hochlin(A,k-1);
end

end