function [ result ] = vector_norm( A )
    [n, m] = size(A);
    n = max(n, m);
    result = 0.0;
    for i = 1:n
        result = result + A(i) * A(i);
    end
    result = double(sqrt(result));
end

