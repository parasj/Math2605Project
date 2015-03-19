% lu_fact: factorizes n x n matrix A into L, U matricies
function [L, U, dA] = lu_fact(A, n)
    I = eye(n);                                                             % n x n identity matrix
    A_orig = A;                                                             % save A
    
    for k = 1:n-1                                                           % for each row k
        if A(k, k) == 0                                                     %   check that a pivot exists
            error('Cannot complete LU factorization');
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
    
    dA = normInf(matrix_mult(L, U) - A_orig);                               %   calculate dA