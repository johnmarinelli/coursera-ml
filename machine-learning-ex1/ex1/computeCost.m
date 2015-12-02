function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
theta0 = theta(1);
theta1 = theta(2);

for i = 1:m
  row = [X(i, 1), X(i, 2)];
  hyp = theta0 * row(1) + theta1 * row(2);
  diff = hyp - y(i);
  sqrd = diff * diff;
  J = J + sqrd;
end

J  = 1 / (2 * m) * J

% =========================================================================

end
