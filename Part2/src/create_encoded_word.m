function [ y ] = create_encoded_word( x1, x2 )
    [n, ~] = size(x1);
    y = zeros(1, n);
    for i = 1 : n
        y(i) = x1(i) * 10 + x2(i);
    end
end