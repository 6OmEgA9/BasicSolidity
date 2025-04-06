// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MatrixDiagonalSum {
    // Structure to represent matrix dimensions
    struct Matrix {
        uint size;    // Assuming a square matrix (rows = cols)
        uint[] data;  // 1D array to store matrix elements
    }

    // State variable to store the matrix
    Matrix public matrix;

    // Function to initialize the matrix with user-provided data
    function setMatrix(uint _size, uint[] memory _data) public {
        require(_size > 0, "Matrix size must be greater than 0");
        require(_size * _size == _data.length, "Invalid matrix dimensions for square matrix");
        matrix = Matrix({
            size: _size,
            data: _data
        });
    }

    // User-defined function to find the sum of diagonal elements
    function sumOfDiagonal() public view returns (uint) {
        require(matrix.data.length > 0, "Matrix is empty");

        uint sum = 0;
        uint n = matrix.size;

        // For a square matrix, diagonal elements are at indices i * n + i
        for (uint i = 0; i < n; i++) {
            sum += matrix.data[i * n + i]; // Primary diagonal (top-left to bottom-right)
        }

        return sum;
    }

    // Optional: Function to get the matrix data (for verification)
    function getMatrix() public view returns (uint size, uint[] memory data) {
        return (matrix.size, matrix.data);
    }
}