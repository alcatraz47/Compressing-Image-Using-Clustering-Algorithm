function centroids = computeCentroids(X, idx, K)
[m n] = size(X);

centroids = zeros(K, n);

for i=1:K
  id = find(idx==i);
  ex = X(id,:);
  height = length(id);
  centroids(i,:) = sum(ex)/height;
end
% =============================================================
end

