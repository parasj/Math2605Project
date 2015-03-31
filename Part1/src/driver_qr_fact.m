[filename, pathname] = uigetfile('*.dat', 'qr_fact_househ: Select an n x n matrix to load');
fileloc = strcat(pathname, filename);
matrix = importdata(fileloc)

[m, n] = size(matrix);

% key = input('Solve using householder or givens? enter 1 for householders, 2 for givens and then press enter:\n');

if (m < 1 || n < 1 || m ~= n)
    error('Malformed matrix, load an n x n matrix.');
end

key = questdlg( 'Which method should be used for QR Factorization?', 'qr_fact', 'Householders', 'Givens', 'Householders');

switch key
    case 'Givens'
        [ Q, R, QRError] = qr_fact_givens( matrix )
    case 'Householders'
        [ Q, R, QRError] = qr_fact_househ( matrix )
end