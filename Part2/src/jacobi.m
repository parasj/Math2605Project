function [its, sol] = jacobi(Ab, x0, tol)
    b = Ab(:,end);
    A = Ab;
    A(:,end) = [];
    [~, col] = size(A);
    its = 0;

    delta = Inf;
    xn = x0;
    while ((delta > tol) && (its <= 100))
        [L, D, U] = LDU(A);
        S = D;
        y = 1;
        while y <= col
            x = y;
            if (D(x,y) ~= 0)
                S(x,y) = 1/D(x,y);
            end
            y = y+1;
        end
        T = -1 * L - U;
        oldxn = xn;
        %xn = matrix_mult(S, matrix_mult(T, xn)) + matrix_mult(S, b);
        xn = S* (T *xn) + S* b;
        delta = normInf(xn - oldxn);
        its = its+1;
    end
    sol = xn;
    if its >= 101
       error('Did not converge in 100 iterations');
    end
end

