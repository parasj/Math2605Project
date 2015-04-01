[filename, pathname] = uigetfile('*.dat', 'Decode: Select a y vector to load');
fileloc = strcat(pathname, filename);
y = importdata(fileloc);

[~, n] = size(y);

[y0, y1]   = decode_word(y);
[a0, a1]   = create_transformation_matrix(n - 3);


key = questdlg( 'Which method should be to solve Ax=b?', 'Decode', 'Jacobi', 'Gauss-Seidel', 'Gauss-Seidel');
 
y_0 = y0';
y_1 = y1';

switch key
    case 'Jacobi'
        % a0 * x0 = y0
        [iter0, x0] = jacobi([a0 y_0], zeros(n, 1), .2);
        % a1 * x1 = y1
        [iter1, x1] = jacobi([a1 y_1], zeros(n, 1), .2);
        
    case 'Gauss-Seidel'
        % a0 * x0 = y0
        [iter0, x0] = gauss_seidel([a0 y_0], zeros(n, 1), .2);
        % a1 * x1 = y1
        [iter1, x1] = gauss_seidel([a1 y_1], zeros(n, 1), .2);
end

if (x0 ~= x1)
    error('X0 != X1 - some error occurred');
end

x0 = mod(x0, 2);
x = x0(1 : end - 3)';

h = msgbox(strcat('x: ', mat2str(x)), 'Decode Driver');