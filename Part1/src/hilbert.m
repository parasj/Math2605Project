function [ A, b ] = hilbert( n )

% A = zeros(n, n);
A = hilb(n);
b = ones(n, 1);
b = b * 0.1^(n / 3);

end