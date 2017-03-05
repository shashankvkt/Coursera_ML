function J = computeCost(X, y, theta)

data = load('ex1data1.txt');

m = length(y);

prediction = X*theta;  %compute h(x)

sum_square = (prediction - y).^2;  %(h(x) - y)^2

J = (1/(2*m))*sum(sum_square);  % cost function = 1/2m sum(h(x) - y)^2 as per formula

end
