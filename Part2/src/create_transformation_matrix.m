function [ A0, A1 ] = create_transformation_matrix( n )
    A0 = zeros(n + 3, n);
    A1 = zeros(n + 3, n);
    for i = 1 : n
        A1(i:i+3, i) = [1 1 0 1];
    end
end