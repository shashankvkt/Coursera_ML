function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y);

for iter = 1:num_iters
    prediction = X*theta;
    % Save the cost J in every iteration    
    
    theta(1)=theta(1)-(alpha*(1/m)*(sum((prediction-y).*X(:,1))))
    theta(2)=theta(2)-(alpha*(1/m)*(sum((prediction-y).*X(:,2))))
    
    J_history(iter) = computeCost(X, y, theta);
end

end
