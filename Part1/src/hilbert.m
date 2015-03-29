function [ A, b ] = hilbert( n )
    A = zeros(n);
    b = ones(n, 1);
    b = b * 0.1^(n / 3);
    
    for i = 1 : n
        for j = 1 : n
            A(i, j) = 1 / (i + j - 1);
        end
    end
end