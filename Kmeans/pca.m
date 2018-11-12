function [U, S] = pca(X)

[m, n] = size(X);

U = zeros(n);
S = zeros(n);

sigma = (1/m) * X' * X;%covariance calculation
[U,S,V] = svd(sigma);

end
