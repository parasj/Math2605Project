function [ max ] = normInf( A )
    [n_row, n_col] = size(A);
    max = 0;

    for i = 1:n_row
        rowsum = 0;
        for j = 1:n_col
            rowsum = rowsum + abs(A(i, j));
        end

        if rowsum > max
            max = rowsum;
        end
    end

    %     for i = 1:n_row
    %         for j = 1:n_col
    %             if A(i, j) > max
    %                 max = A(i, j);
    %             end
    %         end
    %     end
end