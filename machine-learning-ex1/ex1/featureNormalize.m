function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


mu = mean(X_norm);
sigma = std(X_norm);

X_norm_mu = X_norm - repmat(mu,length(X_norm),1);
X_norm_std = repmat(sigma,length(X_norm),1);

X_norm =  X_norm_mu./X_norm_std;

end
