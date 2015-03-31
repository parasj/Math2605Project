function [ x, dQR, dA ] = solve_qr_b( Ab )
    [n, ~] = size(Ab);
    b = Ab(1:n, n + 1);
    A = Ab(1:n, 1:n);

    key = questdlg( 'Which method should be used for QR Factorization?', 'qr_fact', 'Householders', 'Givens', 'Householders');
   
    switch key
        case 'Givens'
            [ x, dQR, dA] = solve_qr_b_givens(A, b);
        case 'Householders'
            [ x, dQR, dA] = solve_qr_b_househ(A, b);
    end
    
    %     key = input('Solve using householder or givens? enter 1 for householders, 2 for givens and then press enter:\n');
end
