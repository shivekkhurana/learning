function [X_norm, mu, sigma] = featureNormalize(X)
	%FEATURENORMALIZE Normalizes the features in X 
	%   FEATURENORMALIZE(X) returns a normalized version of X where
	%   the mean value of each feature is 0 and the standard deviation
	%   is 1. This is often a good preprocessing step to do when
	%   working with learning algorithms.

	num_features = size(X, 2);

	for feature=1:num_features%for each column, i.e feature
		mu = mean(X(:, feature));
		sigma = svd(X(:, feature));

		for m=1:length(X(:,feature))
			X(m, feature) = (X(m, feature) - mu)/sigma;
		end
	end
	X_norm = X;
end
