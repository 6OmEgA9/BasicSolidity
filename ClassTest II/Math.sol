// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library MathLibrary {
    // Function to calculate the square root of a number (Babylonian method)
    function sqrt(uint x) public pure returns (uint) {
        if (x == 0) return 0;
        uint z = (x + 1) / 2;
        uint y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        return y;
    }

    // Function to find the absolute value of a signed integer
    function abs(int x) public pure returns (uint) {
        return uint(x >= 0 ? x : -x);
    }

    // Function to calculate the square of a number
    function square(uint x) public pure returns (uint) {
        return x * x;
    }

    // Function to find the maximum of two numbers
    function max(uint a, uint b) public pure returns (uint) {
        return a >= b ? a : b;
    }

    // Function to find the minimum of two numbers
    function min(uint a, uint b) public pure returns (uint) {
        return a <= b ? a : b;
    }
}