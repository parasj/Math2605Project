function [ G ] = givensrotation(x, nrow, row, col)
    a = x(1);
    b = x(2);

    r = sqrt( a * a + b * b );
    sine = -1 * b / r;
    cosine = a / r;


    G = eye(nrow);

    G(row, row) = cosine;
    G(col, col) = cosine;
    G(col, row) = -sine;
    G(row, col) = sine;
end