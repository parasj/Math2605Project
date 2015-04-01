function [its, sol] = gauss_seidel(Ab, x0, tol)
    b = Ab(:,end);
    A = Ab;
    A(:,end) = [];
    its = 0;

    delta = Inf;
    xn = x0;
    while ((delta > tol) && (its <= 100))
        [L, D, U] = LDU(A);
        S = L + D;
        T = -1 * U;
        oldxn = xn;
        xn = solve_forward_sub(S, (matrix_mult(T, xn) + b));
        delta = normInf(xn - oldxn);
        its = its+1;
    end
    sol = xn;
    if its > 101
       error('Did not converge in 100 iterations');
    end
   
end