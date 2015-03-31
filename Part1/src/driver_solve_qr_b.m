[filename, pathname] = uigetfile('*.dat', 'solve_qr_b: Select an n x (n + 1) matrix to load');
fileloc = strcat(pathname, filename);
matrix = importdata(fileloc);

[m, n] = size(matrix);

if (m < 1 || n < 1 || m + 1 ~= n)
    error('Malformed matrix, load an n x (n + 1) matrix.');
end

[x, ~, xError] = solve_qr_b(matrix)