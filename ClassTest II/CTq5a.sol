// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MatrixOperations {
    // Structure to represent matrix dimensions
    struct Matrix {
        uint rows;
        uint cols;
        uint[] data; // 1D array to store matrix elements
    }

    // State variable to store the matrix
    Matrix public matrix;

    // Function to initialize the matrix with user-provided data
    function setMatrix(uint _rows, uint _cols, uint[] memory _data) public {
        require(_rows * _cols == _data.length, "Invalid matrix dimensions");
        matrix = Matrix({
            rows: _rows,
            cols: _cols,
            data: _data
        });
    }

    // User-defined function to find the largest element in the matrix
    function findLargestElement() public view returns (uint) {
        require(matrix.data.length > 0, "Matrix is empty");

        uint largest = matrix.data[0]; // Start with the first element
        
        // Iterate through the entire data array
        for (uint i = 1; i < matrix.data.length; i++) {
            if (matrix.data[i] > largest) {
                largest = matrix.data[i];
            }
        }
        
        return largest;
    }

    // Helper function to get the matrix data (for verification)
    function getMatrix() public view returns (uint rows, uint cols, uint[] memory data) {
        return (matrix.rows, matrix.cols, matrix.data);
    }
}