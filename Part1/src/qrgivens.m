function [Q,R] = qrgivens(A)
  [nrow,ncol] = size(A);
  Q = eye(nrow);
  R = A;

  for j = 1:ncol
    for i = nrow:-1:(j+1)
      G = eye(nrow);
      [c,s] = givensrotation( R(i-1,j),R(i,j) );
      G([i-1, i],[i-1, i]) = [c -s; s c];
      R = G'*R;
      Q = Q*G;
    end
  end

end