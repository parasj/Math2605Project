[filename, pathname] = uigetfile('*.dat', 'lu_fact: Select an n x n matrix to load');
fileloc = strcat(pathname, filename);
matrix = importdata(fileloc);

[m, n] = size(matrix);

if (m < 1 || n < 1 || m ~= n)
    error('Malformed matrix, load an n x n matrix.');
end

[L, U, LUError] = lu_fact(matrix)