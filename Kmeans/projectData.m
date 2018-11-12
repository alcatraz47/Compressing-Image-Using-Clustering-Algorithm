function Z = projectData(X, U, K)
Z = zeros(size(X, 1), K);

U_reduced = U(:, 1:K);
%for i=1:K
%  x = X(i, :);
%  x = x';
%  Z(i,K) = x' * U_reduced;
%end
Z = X * U_reduced;
% =============================================================

end
