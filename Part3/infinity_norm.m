function [norm] = infinity_norm(A)
    %Infinity norm of a matrix
    %   The max of the sum of the rows of a matrix
    [rows,cols] = size(A);
    counter = 1;
    norm = 0;
    while counter <= rows
        x = sum(A(counter,:));
        if (x > norm)
            norm = x;
        end
        counter = counter + 1;
    end
end

