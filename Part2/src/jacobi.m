function [its] = jacobi(A, x0, tol)
    b = A[:,end];
    A(:,end) = [];
    its = 0;

    delta = x0;
    while ((delta > tol) && (its <= 100))
        [L, D, U] = LDU(A);
        S = D;
        T = -1 * L - U;
        xn = matrix_mult(S', matrix_mult(T, xn)) + matrix_mult(S', b);
        its = its+1;
    end
    if iterations > 101
       error('Did not converge in 100 iterations');
    else
        print ('Converged in ' + its + ' iterations');
    end
   
end

