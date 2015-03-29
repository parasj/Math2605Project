function [ x ] = generate_rand_binary_stream( n )
    x = zeros(1, n);
    for i = 1:n
        if rand > .5
            x(i) = 1;
        end
    end
end