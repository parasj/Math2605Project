function [ x1, x2 ] = decode_word( y )
    [~, n] = size(y);
    x1 = zeros(1, n);
    x2 = zeros(1, n);
    for i = 1 : n
        x2(i) = bitand(y(i), 1);
        x1(i) = int8((y(i) - x2(i)) / 10);
    end
end