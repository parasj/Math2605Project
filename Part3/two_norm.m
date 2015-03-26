function [out] = two_norm(v)
%2 norm of a matrix or vector
[row,col] = size(v);
if (row==1) || (col==1)
    v = v .* v;
    out = sqrt(sum(v));
else
    v = v .* v;
    out = sqrt(sum(sum(v)));
end

end

