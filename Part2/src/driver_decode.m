[filename, pathname] = uigetfile('*.dat', 'Decode: Select a y vector to load');
fileloc = strcat(pathname, filename);
y = importdata(fileloc);

[~, n] = size(y);

[y0, y1]   = decode_word(y);
[a0, a1]   = create_transformation_matrix(n);


key = questdlg( 'Which method should be to solve Ax=b?', 'Decode', 'Jacobi', 'Gauss-Seidel', 'Gauss-Seidel');
 
y_0 = [y0]';
y_1 = [y1]';

switch key
    case 'Jacobi'
        % a0 * x0 = y0
        [iter0, x0] = jacobi([a0 y_0], zeros(n + 3, 1), .9)
        % x0 = y_0 \ a0
        
        % a1 * x1 = y1
        [iter1, x1] = jacobi([a1 y_1], zeros(n + 3, 1), .9)
        % x1 = [y1 0 0 0]' \ a1
        
    case 'Gauss-Seidel'
        % a0 * x0 = y0
        x0 = [y0 0 0 0]' \ a0
        % a1 * x1 = y1
        x1 = [y1 0 0 0]' \ a1
end

if (x0 ~= x1)
    error('X0 != X1 - some error occurred');
end

x0 = mod(x0, 2);
x = x0(1 : end)'