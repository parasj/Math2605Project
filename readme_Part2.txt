ANY VECTOR .dat FILES SHOULD BE INPUTTED AS TRANSPOSE VECTORS (1 x n).
    Ex. 1 2 3 4

Part 2 Readme
1. Encoding
	To run the encoding program, run in the Matlab shell: driver_encode
	This will launch a GUI where you enter n, the length of the input 
    stream, and it will generate a random input stream x and compute y, 
    the output stream. x and y will be displayed in a popup and a0 and a1 
    will be printed to the shell.

2. Jacobi
    To run the Jacobi method program, run in the Matlab shell: drive_jacobi
    This will launch a file picker for an input .dat file where you will 
    choose the n x (n + 1) matrix A|b as a .dat file. Another file picker 
    will then be launched for an input .dat file of a transpose vector
    (1 x n). Next a GUI will be launched where you will enter the tolerance.
    The number of iterations and the solution will be printed to the shell
    or an error message saying that more than 100 iterations were required.

3. Gauss Seidel
    To run the Gauss Seidel method program, run in the Matlab shell: 
    drive_gauss_seidel This will launch a file picker for an input .dat 
    file where you will choose the n x (n + 1) matrix A|b as a .dat file. 
    Another file picker will then be launched for an input .dat file of a 
    transpose vector (1 x n). Next a GUI will be launched where you will
    enter the tolerance. The number of iterations and the solution will be 
    printed to the shell or an error message saying that more than 100 
    iterations were required.

4. Decoding
	To run the decoding program, run in the Matlab shell: driver_decode
    This will launch a file picker for an input .dat file. A GUI will then
    be launched where you choose to use either Jacobi or Gauss Seidel 
    method. The resulting x vector as a binary stream will be printed to 
    the shell or an error message if it takes more than 100 iterations.