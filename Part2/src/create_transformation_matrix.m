function [ A0, A1 ] = create_transformation_matrix( n )
    A0 = zeros(n + 3, n + 3);
    A1 = zeros(n + 3, n + 3);
    for i = 1 : n + 3
        A1(i:i+3, i) = [1 1 0 1];
        A0(i:i+3, i) = [1 0 1 1];
    end
    
A0 = A0(1:n+3, 1:n+3);
A1 = A1(1:n+3, 1:n+3);
end