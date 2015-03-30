function [L, U, dA] = lu_fact(A)
    [m, n] = size(A);
    I = eye(n);                                                             % n x n identity matrix
    A_orig = A;                                                             % save A
    
    if m ~= n                                                               % check square
        error('Not square matrix');
    end
    
    for k = 1:n-1                                                           % for each row k
        if A(k, k) == 0                                                     %   check that a pivot exists
            error('Cannot complete LU factorization, no pivot in position %d', k);
        end
        
        for i = k+1:n                                                       %   for the subsequent rows after k                                      
            A(i,k) = A(i,k) / A(k,k);                                       %       save the kth column L value (from (E_i)^-1)
            for j = k+1:n                                                   %       compute the guassian elimination for the ith row
                A(i,j) = A(i,j) - A(i,k) * A(k,j);
            end
        end
    end
    
    L = I + tril(A, -1);                                                    %   L E1^-1 E2^-1 E3^-1 which is what is saved below the diagonal
    U = triu(A);                                                            %   U = E3 E2 E1 A (transformed A)
    
    dA = calc_error(matrix_mult(L, U), A_orig);
end