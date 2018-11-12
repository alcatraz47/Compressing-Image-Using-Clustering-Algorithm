function idx = findClosestCentroids(X, centroids)
% Setting K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);

norms = zeros(K,1);
for i=1:size(X,1)
  for k=1:K;
    norms(k) = (X(i, :) - centroids(k, :))*(X(i, :) - centroids(k, :))';
  end
  [c, index] = min(norms);
  idx(i) = index;
end
% =============================================================

end

