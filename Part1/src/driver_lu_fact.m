% input = inputdlg('Enter the filename of the the .dat file you wish to load. Please place it in the root of Part 1 (Part1/src/)', 'lu_fact Driver');
[filename, pathname] = uigetfile('*.dat', 'lu_fact: Select an n x n matrix to load');
fileloc = strcat(pathname, filename);
matrix = importdata(fileloc);

[m, n] = size(matrix);

if (m < 1 || n < 1 || m ~= n)
    error('Malformed matrix, load an n x n matrix.');
end

[L, U, LUError] = lu_fact(matrix)

% h = msgbox({strcat('L: ', mat2str(l)), '', strcat('L: ', mat2str(u)), '', sprintf('Error: %f', da)}, 'Encoding Driver');