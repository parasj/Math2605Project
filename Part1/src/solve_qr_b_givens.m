function [ x, dQR, dA ] = solve_qr_b_givens( A, b )

% [Q, R, dQR] = qr_fact_givens(A);
[Q, R] = qrgivens(A);
dQR = 0;

% Solve Rx = Qt*b w/ backward substitution
x = solve_backward_sub(R, matrix_mult(Q', b));

dA = vector_norm(matrix_mult(A, x) - b);

end
