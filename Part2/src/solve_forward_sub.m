function [ x ] = solve_forward_sub( A, b )

% http://mathfaculty.fullerton.edu/mathews/n2003/BackSubstitutionMod.html
% algorithm description:
%   if pivot non-zero, find scalar x_n to turn pivot to 1

x = zeros(size(b));
for i = 1:size(x)
    if (A(i, i) == 0)
        error('Cannot complete substitution, no pivot in position %d', k);
    end
    
    x(i) = b(i) / A(i, i); % x_i = b_i / pivot in row
    % eliminate the pivot from b through subtraction
    b(i + 1 : size(b)) = b(i + 1 : size(b)) - A(i + 1 : size(x), i) * x(i);
end

end

