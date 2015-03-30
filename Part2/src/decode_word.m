function [ x1, x2 ] = decode_word( y )
    [~, n] = size(y);
    x1 = zeros(1, n);
    x2 = zeros(1, n);
    for i = 1 : n
        x1(i) = bitand(y(i), 2) * 1/2;
        x2(i) = bitand(y(i), 1);
    end
end