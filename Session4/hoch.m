% Studentin: Alexandra Maximova

function B = hoch(A, k)

if k == 0
    B = eye(size(A));
elseif mod(k,2)==0
    B = hoch(A,k/2);
    B = B*B;
else
    B = A*hoch(A,k-1);
end

end