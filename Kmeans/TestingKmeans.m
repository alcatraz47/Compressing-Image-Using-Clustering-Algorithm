clear ; close all; clc
fprintf('Finding closest centroids.\n\n');

% Loading an example dataset that we will be using
load('data2.mat');

K = 3; % 3 Centroids initially setting up
initial_centroids = [3 3; 6 2; 8 5];

idx = findClosestCentroids(X, initial_centroids);

fprintf('Closest centroids for the first 3 examples: \n')
fprintf(' %d', idx(1:3));

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nComputing centroids means.\n\n');

%  Computing means based on the closest centroids found in the previous part.
centroids = computeCentroids(X, idx, K);

fprintf('Centroids computed after initial finding of closest centroids: \n')
fprintf(' %f %f \n' , centroids');

fprintf('Program paused. Press enter to continue.\n');
pause;


fprintf('\nRunning K-Means clustering on example dataset.\n\n');

% Loading an example dataset
load('data2.mat');


K = 3;
max_iters = 10;

initial_centroids = [3 3; 6 2; 8 5];

% Runing K-Means algorithm. The 'true' at the end tells our function to plot the progress of K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');

fprintf('Program paused. Press enter to continue.\n');
pause;


fprintf('\nRunning K-Means clustering on pixels from an image.\n\n');

A = double(imread('small_me.png'));


A = A / 255; % Dividing by 255 so that all values are in the range 0 - 1


img_size = size(A);

X = reshape(A, img_size(1) * img_size(2), 3);

K = 16; 
max_iters = 10;

initial_centroids = kMeansInitCentroids(X, K);

[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

fprintf('Program paused. Press enter to continue.\n');
pause;



fprintf('\nApplying K-Means to compress an image.\n\n');

idx = findClosestCentroids(X, centroids);

X_recovered = centroids(idx,:);

X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);

subplot(1, 2, 1);
imagesc(A); 
title('Original');

subplot(1, 2, 2);
imagesc(X_recovered)
title(sprintf('Compressed, with %d colors.', K));


fprintf('Program paused. Press enter to continue.\n');
pause;

