ANY VECTOR .dat FILES SHOULD BE INPUTTED AS TRANSPOSE VECTORS (1 x n).
    Ex. 1 2 3 4

Part 1 Readme

1. lu_fact:
	To test the lu_fact, run driver_lu_fact in the Matlab shell.

	It will launch a file picker for an input .dat file and print L, U and the LU error out to the Matlab shell.

	The lu_fact function takes in a Matlab matrix as an argument if you wish to test it directly.

2. qr_fact:
	To test qr_fact_househ and qr_fact_givens, run driver_qr_fact in the Matlab shell. This driver lets you choose which method you wish to solve with.

	It will launch a file picker for an input .dat file. After that, it will ask for whether you wish to use householders or givens so calculate the QR decomposition.
	It will then print L, U and the LU error out to the Matlab shell.

	The qr_fact_househ and qr_fact_givens function takes in a Matlab matrix as an argument if you wish to test it directly.

3a. solve_lu_b:
	To test solve_lu_b, run driver_lu_b in the Matlab shell.

	It will launch a file picker for an input .dat file and print x and the error out to the Matlab shell.

	The solve_lu_b function takes in a n x (n + 1) augmented Matlab matrix as an argument if you wish to test it directly.

3b. solve_qr_b:
	To test solve_qr_b, run driver_lu_b in the Matlab shell. This driver lets you choose which method you wish to solve with.

	It will launch a file picker for an input .dat file. After that, it will ask for whether you wish to use householders or givens so calculate the QR decomposition.
	It will then print x and the error out to the Matlab shell.

	The solve_qr_b function takes in a n x (n + 1) augmented Matlab matrix as an argument if you wish to test it directly.

4. Solution and errors for the Hilbert matrix, Error plots
	To process the Hilbert matricies in the range of 2 to n, run the command runHilbertSolution(2, n) where n is the last Hilbert matrix to process.

	Wait a few seconds to let the program run and a graph will appear.
	The human readable output on the results are written to the folder Part1/written/hilbert_partd.txt.