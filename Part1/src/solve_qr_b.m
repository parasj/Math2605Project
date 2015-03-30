function [ x, dQR, dA ] = solve_qr_b( Ab )
    [n, ~] = size(Ab);
    b = Ab(1:n, n + 1);
    A = Ab(1:n, 1:n);

    key = input('Solve using householder or givens? enter 1 for householders, 2 for givens and then press enter:\n');
    if (key == 2)
        [ x, dQR, dA] = solve_qr_b_givens(A, b);
    end
    
    if (key == 1)
        [ x, dQR, dA] = solve_qr_b_househ(A, b);
    end
end
