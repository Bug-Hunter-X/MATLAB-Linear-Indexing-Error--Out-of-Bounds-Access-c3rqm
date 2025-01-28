# MATLAB Linear Indexing Bug

This repository demonstrates a common, yet subtle, error in MATLAB related to linear indexing.  Linear indexing can be convenient, but it's crucial to handle cases where the array might be empty or have zero dimensions to prevent out-of-bounds access errors.

## The Bug

The `bug.m` file contains a function that uses linear indexing to iterate through a matrix.  However, it fails to correctly handle cases where the input matrix is empty or has zero rows/columns. This leads to an out-of-bounds access error.

## The Solution

The `bugSolution.m` file provides a corrected version of the function.  It first checks if the input matrix is empty. If it's empty, it returns an empty array. Otherwise, it iterates through the matrix using appropriate bounds checking, preventing out-of-bounds access.

## How to reproduce

1. Clone this repository.
2. Open `bug.m` and `bugSolution.m` in MATLAB.
3. Run `bug.m` with various inputs, including an empty array or a zero-sized array. Observe the error.
4. Run `bugSolution.m` with the same inputs. Note that it handles the empty/zero-sized array gracefully and avoids the error.

This example highlights the importance of careful array dimension checking in MATLAB to prevent common indexing errors.