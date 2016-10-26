% Studentin: Alexandra Maximova

function B = hochfor(A, k)

B = eye(size(A));
for i = 1:k
    B = B*A;
end

end