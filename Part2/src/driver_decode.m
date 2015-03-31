[filename, pathname] = uigetfile('*.dat', 'Decode: Select a y vector to load');
fileloc = strcat(pathname, filename);
y = importdata(fileloc);

[~, n] = size(y);

[y0, y1]   = decode_word(y)
[a0, a1]   = create_transformation_matrix(n)

% a0 * x0 = y0
x0 = [y0 0 0 0]' \ a0

% a1 * x1 = y1
x1 = [y1 0 0 0]' \ a1

if (x0 ~= x1)
    error('x mismatch');
end

x = x0