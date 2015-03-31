input = inputdlg('Enter n, the size of the input stream', 'Encoding Driver');

n = str2num(input{1});

x = generate_rand_binary_stream(n);
[a0, a1] = create_transformation_matrix(n)
y0 = mod(matrix_mult(a0, x'), 2);
y1 = mod(matrix_mult(a1, x'), 2);
y = mod(create_encoded_word(y0, y1), 2);

h = msgbox({strcat('x: ', mat2str(x)), '',strcat('y: ', mat2str(y))}, 'Encoding Driver');