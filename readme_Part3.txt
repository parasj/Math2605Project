Part 3 Readme

This part includes a function power_method that takes in a square matrix, a tolerance, and an initial vector and performs power iteration up to 100 times to output the approximated eigenvalue and eigenvector as well as the number of iterations it took. If the iterations didn't converge to the tolerance within 100 iterations the function errors out.

Included is a power_method_driver to act as a user end for running the power_method. Just run power_method_driver and select the dat files for the desired matrix and the initial vector in that order. Then insert the desired tolerance for the itteration when prompted.
The driver will run the power_method function for you with these values and store the outputs in the variables [eigenvalue, eigenvector, iterations].

The leslie matrix and initial vector for the population estimation portion of the project are also provided in .mat files to easily load up and run the power_method on if desired. The write up for this portion of the project is located in the main project directory. It includes all the answers to the given problems in the project description.