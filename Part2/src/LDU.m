function [L,D,U] = LDU( A )
%Pulls out the upper lower triangular, diagonal and upper triagnular
%of a given matrix A
[row, col] = size(A);
y = 1;
L = zeros(row,col);
while y<=col-1
   x = y + 1;
   temp = zeros(row, 1);
   while x <= row
       temp(x,1) = A(x,y);
       x = x+1;
   end
   L(:,y) = temp;
   y = y+1;
end

y = 1;
D = zeros(row,col);
while y <= col
    x = y;
    D(x,y) = A(x,y);
    y = y+1;
end

U = zeros(row,col);
x = 1;
while x<=row-1
   y = x + 1;
   temp = zeros(1, col);
   while y <= col
       temp(1,y) = A(x,y);
       y = y+1;
   end
   U(x,:) = temp;
   x = x+1;
end

