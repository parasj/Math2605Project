x = [1 0 1 1 0];
[a0, a1] = create_transformation_matrix(5)

y0 = mod(a0 * x', 2);
y1 = mod(a1 * x', 2);

y0'
y1'

y  = create_encoded_word(y0, y1)

[x_1, x_2] = decode_word(y)