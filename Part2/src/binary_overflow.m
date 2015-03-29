function [ A ] = binary_overflow( A )
    [i, j] = size(A);
    for a = 1 : i
        for b = 1 : j
           A(a, b) = mod(A(a, b), 2);
        end
    end
end

