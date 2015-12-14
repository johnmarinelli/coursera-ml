function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

for r=1:rows(z)
  for c=1:columns(z)
    z_val = z(r,c);
    sigmoid_val = (1 / (1 + e ** (-z_val)));
    g(r, c) = sigmoid_val;
  end
end

% =============================================================

end
