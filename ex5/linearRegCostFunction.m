function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% for regularization
temp = theta;
temp(1) = 0;

% X has shape (m, n+1), y has shape (m, 1), theta has shape (n+1, 1)
diff = (X * theta) - y;
J = 1/(2*m) * (diff' * diff) + lambda/(2*m) * (temp' * temp);

% grad has the same shape as theta (n+1, 1)
grad =  1/m * X' * diff + lambda/m * temp;







% =========================================================================

grad = grad(:);

end
