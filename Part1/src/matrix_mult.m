function [ result ] = matrix_mult( a, b )    
    [ar, ac] = size(a);     % a rows, columns
    [br, bc] = size(b);     % b rows, columns
    
    result = zeros(ar, bc); % ar x bc result

    if ac == br
        for row = 1 : ar
            for col = 1 : bc
                for multcount = 1 : ac;
                    result(row, col) = result(row, col) + a(row, multcount) * b(multcount, col);
                end
            end
        end
    else
        error('Matrix size mismatch');
    end
end

