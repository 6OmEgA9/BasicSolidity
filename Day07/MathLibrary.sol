// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
library MathLibrary {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
    function subtract(uint256 a, uint256 b) internal pure returns (uint256) {
        require(a >= b, "Subtraction result cannot be negative");
        return a - b;
    }
    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "Division by zero");
        return a / b;
    }
    function modulo(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "Modulo by zero");
        return a % b;
    }
    function sqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0) {
            return 0;
        }
        uint256 z = (x + 1) / 2;
        uint256 y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        return y;
    }
    function abs(int256 x) internal pure returns (uint256) {
        return x < 0 ? uint256(-x) : uint256(x);
    }
    function power(uint256 base, uint256 exponent) internal pure returns (uint256 result) {
        result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
    }
}