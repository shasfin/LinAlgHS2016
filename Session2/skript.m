% Studentin: Alexandra Maximova
% Lineare Algebra HS2016
% Compare runtime of different functions computing the n-th Fibonacci
% number

%% Clear variables
clear

%% Define initial values
N = 500000; % max argument
tfor = zeros(N,1);
trec = zeros(N,1);
tmatrix = zeros(N,1);

%% Measure runtime
for n = 1:100:N
% Measure runtime of the version with the for-loop
tic
fibonaccifor(n);
tfor(n) = toc;

% Measure runtime of the recursive version. Don't uncomment unless N is 38
% or smaller (takes too long).
% tic
% fibonaccirec(n);
% trec(n) = toc;

% Measure runtime of the version with matrix power
tic
fibonaccimatrix(n);
tmatrix(n) = toc;

end

% trec will be flat in the plot, because we commented out the computation
plot(1:N, tfor,...
    1:N, trec,...
    1:N, tmatrix)
legend('for','rec','matrix')
title('Comparison of different implementations of Fibonacci')
xlabel('n')
ylabel('runtime [s]')