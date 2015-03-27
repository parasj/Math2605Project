% computes givens rotation, returing Q, R and error
% givens algorithm described in http://www.math.usm.edu/lambers/mat610/sum10/lecture9.pdf

function [ Q, R, dA ] = qr_fact_givens( A )
    [nrow, ncol] = size(A);
    
    Q = eye(nrow); % Q = G1' G2' G3'
    R = A;         % R = G3  G2  G1  A
    
    for col = 1 : ncol
        for row = nrow : -1 : col + 1
            x = zeros(2, 1);
            x(1) = R(col, col);
            x(2) = R(row, col);
            
            G = givensrotation(x, nrow, row, col);            

            Q = matrix_mult(Q, G');
            R = matrix_mult(G, R);
        end
    end
    
    dA = calc_error(matrix_mult(Q, R), A);
end