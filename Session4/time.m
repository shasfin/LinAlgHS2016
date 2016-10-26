% Student: Alexandra Maximova
% Time the different 'hoch' functions

clear
% Test matrix
A = rand(100);

% Max k
N = 500;
% initialize timing vectors
tlin = zeros(N,1);
tfor = zeros(N,1);
trec = zeros(N,1);
t = zeros(N,1);
tpow = zeros(N,1);
tit = zeros(N,1);

% time each program
for n = 1:N
    tic
    B = hochlin(A,n);
    tlin(n) = toc;
    
    tic
    B = hochfor(A,n);
    tfor(n) = toc;
    
    tic
    B = hochrec(A,n);
    trec(n) = toc;
    
    tic
    B = hoch(A,n);
    t(n) = toc;
    
    tic
    B = A^n;
    tpow(n) = toc;
    
    tic
    B = hochIterative(A,n);
    tit(n) = toc;
end

% plot results
plot(1:N,tlin, 1:N,tfor, 1:N,trec, 1:N,t, 1:N,tpow, 1:N,tit);
legend('hochlin','hochfor','hochrec','hoch','eingebaut','iterativ');
title('Time different implementations of matrix power');