function X_rec = recoverData(Z, U, K)

X_rec = zeros(size(Z, 1), size(U, 1));

U_reduced = U(:, 1:K);      
X_rec = Z*U_reduced';

end
