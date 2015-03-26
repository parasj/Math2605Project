function [ x, dLU, dB ] = solve_lu_b( A, b )

[L, U, dLU] = lu_fact(A);

% Solve LY = b w/ forward substitution
y = solve_forward_sub(L, b);

% Solve UX = Y w/ backward substitution
x = solve_backward_sub(U, y);

dB = calc_error(matrix_mult(A, x), b);

end