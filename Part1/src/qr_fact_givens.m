function [ Q, R, dA ] = qr_fact_givens( A )
    [nrow, ~] = size(A);
    
    Q = eye(nrow); % Q = G1' G2' G3'
    R = A;         % R = G3  G2  G1  A
    
    for i = 1 : nrow
        for j = i + 1 : nrow
            x = zeros(2,1);
            x(1) = A(i, i);
            x(2) = A(i, j);
            
            sin = -1 * x(2) / vector_norm(x);
            cos = x(1) / vector_norm(x);
            
            G = eye(nrow);
            G(i, i) = cos;
            G(j, j) = cos;
            G(j, i) = -1 * sin;
            G(i, j) = sin;
            
            if (i > j)
                G(i, j) = sin;
            end
            

            Q = matrix_mult(Q, G');
            R = matrix_mult(G, R);
        end
    end
    
    dA = calc_error(matrix_mult(Q, R), A);
end