function [its] = jacobi(A, x0, tol)
    b = A[:,end];
    A(:,end) = [];
    [~, col] = size(A);
    its = 0;

    delta = normInf(x0);
    while ((delta > tol) && (its <= 100))
        [L, D, U] = LDU(A);
        S = D;
        y = 1;
        while y <= col
            x = y;
            S(x,y) = 1/D(x,y);
            y = y+1;
        end
        T = -1 * L - U;
        oldxn = xn;
        xn = matrix_mult(S, matrix_mult(T, xn)) + matrix_mult(S, b);
        delta = normInf(xn - oldxn);
        its = its+1;
    end
    if iterations > 101
       error('Did not converge in 100 iterations');
    else
        print ('Converged in ' + its + ' iterations');
    end
   
end

