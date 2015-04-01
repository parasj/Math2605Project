input = inputdlg('Enter n, the size of the input stream', 'Encoding Driver');

n = str2num(input{1});

x = generate_rand_binary_stream(n);
x_0 = [x 0 0 0];
[a0, a1] = create_transformation_matrix(n)
y0 = mod(matrix_mult(a0, x_0'), 2);
y1 = mod(matrix_mult(a1, x_0'), 2);
y = create_encoded_word(y0, y1);

h = msgbox({strcat('x: ', mat2str(x)), '',strcat('y: ', mat2str(y))}, 'Encoding Driver');


fileID = fopen('y.dat','w');
fprintf(fileID, '%d ', y);
fclose(fileID);