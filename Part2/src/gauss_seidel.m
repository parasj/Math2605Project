function [ n ] = gauss_seidel( Ab, x0, tol )
   [n, ~] = size(Ab)
   b = Ab(n + 1, 1:n);
   A = Ab(1:n, 1:n);
   
end