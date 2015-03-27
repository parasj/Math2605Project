function [ x, dQR, dA ] = solve_qr_b( A, b )

[Q, R, dQR] = qr_fact_househ(A);

% Solve Rx = Qt*b w/ backward substitution
x = solve_backward_sub(R, matrix_mult(Q', b));

dA = vector_norm(matrix_mult(A, x) - b);

end
