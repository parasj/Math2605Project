function [ x, dLU, dB ] = solve_lu_b( Ab )

    [n, m] = size(Ab);
    b = Ab(1:n, n + 1);
    A = Ab(1:n, 1:n);

    [L, U, dLU] = lu_fact(A);

    % Solve LY = b w/ forward substitution
    y = solve_forward_sub(L, b);

    % Solve UX = Y w/ backward substitution
    x = solve_backward_sub(U, y);

    dB = vector_norm(matrix_mult(A, x) - b);

end