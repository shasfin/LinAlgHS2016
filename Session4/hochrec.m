% Studentin: Alexandra Maximova

function B = hochrec(A, k)

if k == 0
    B = eye(size(A));
elseif mod(k,2)==0
    B = hochrec(A,k/2)*hochrec(A,k/2);
else
    B = A*hochrec(A,k-1);
end

end