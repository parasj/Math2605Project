x = [1 0 1 1 0];
[a0, a1] = create_transformation_matrix(5)

y0 = mod(a0 * x', 2);
y1 = mod(a1 * x', 2);

y0'
y1'

<<<<<<< HEAD
y  = create_encoded_word(y0, y1)

[x_1, x_2] = decode_word(y)
=======
y            = create_encoded_word(y0, y1)

[y_1, y_2]   = decode_word(y)
[a_0, a_1]   = create_transformation_matrix(5)

% gauss-seidel
% jacobi
>>>>>>> 345dbf692fefa946ec459dbece9236aea166e2b5
