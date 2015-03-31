function [ x ] = solve_backward_sub( A, b )

% http://mathfaculty.fullerton.edu/mathews/n2003/BackSubstitutionMod.html
% algorithm description:
%   if pivot non-zero, find scalar x_n to turn pivot to 1

x = zeros(size(b));
for i = size(x) : -1 : 1
    if (A(i, i) == 0)
        error('Cannot complete substitution, no pivot in position %d', k);
    end
    
    x(i) = b(i) / A(i, i); % x_i = b_i / pivot in row
    % eliminate the pivot from b through subtraction
    b(1 : i - 1) = b(1 : i - 1) - A(1 : i - 1, i) * x(i);
end

end