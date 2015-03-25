% todo

function [ Q, R, dA ] = qr_fact_givens( A )
    [nrow, ~] = size(A);
    
    Q = eye(nrow);
    R = A;
    
    for k = 1:nrow - 1
        v = zeros(nrow, 1);
        v(k:nrow, 1) = R(k:nrow, k);
        
        v(k) = v(k) + vector_norm(v);
        
        if norm(v) ~= 0
            v = v / vector_norm(v);
            
            h = eye(nrow) - 2 * matrix_mult(v, v');
            Q = matrix_mult(Q, h);
            R = matrix_mult(h, R);
        end
    end
    
    dA = calc_error(matrix_mult(Q, R), A);
end

