function I = compress(path)

% read image
X = imread(path);
X = mean(X,3);
X = X/255;

% (optional) add noise
Noise = randn(size(X));
X = X + (0.7*(Noise.*(abs(Noise) <= 0.3)));

figure
imshow(X)

% transform image blocks to columns
d = 16; % block size
B = im2col(X, [d,d], 'distinct');

% svd
[U,D,V] = svd(B);

% dimension reduction (take only first r singular values)
R = nnz(D);
r = floor(0.1*R);
A = U(:,1:r)*D(1:r,1:r)*V(:,1:r)';

[m,n] = size(X);
sizeX = m*n
sizeCompressed = m*r + r + n*r


I = col2im(A, [d,d], size(X), 'distinct');
figure
imshow(I)

end