[filename, pathname] = uigetfile('*.dat', 'power_method: Select an n x n matrix to load');
fileloc = strcat(pathname, filename);
A = importdata(fileloc);
[filename2, pathname2] = uigetfile('*.dat', 'power_method: Select an n x 1 vector to load');
fileloc2 = strcat(pathname2, filename2);
vec = importdata(fileloc2);
input = inputdlg('Enter tol, the tolerance of the power method', 'Tolerance');
tol = str2num(input{1});

[m, n] = size(A);

if (m < 1 || n < 1 || m ~= n)
    error('Malformed matrix, load an n x n matrix.');
end
[m2,n2] = size(vec);
if (m2 ~= m)
    error('Incorrect dimensions for initial vector');
end

[eigenvalue, eigenvector, iterations] =  power_method(A, tol, vec)