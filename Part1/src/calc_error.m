function [ dErr ] = calc_error( A, B )
    dErr = normInf(A - B);                               %   calculate dA
end

