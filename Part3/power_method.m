function [eigenvalue, eigenvector, iterations] =  power_method(A, tol, vec)
   maxIters = 100; 
   iterations = 0; 
   e0 = 0;
   cond = true;
   while ((iterations <= maxIters) && cond)
      eigenvector = A * vec;
      eigenvalue = (eigenvector' * vec) / (vec' * vec);
      %eigenvector = eigenvector / norm(eigenvector);
      vec = eigenvector;
      iterations = iterations + 1;
      if (abs((eigenvalue - e0) / eigenvalue) < tol)
         cond = false;
      end
      e0 = eigenvalue;
   end
   if iterations == 101
       error('Did not converge in 100 iterations');
   end
end