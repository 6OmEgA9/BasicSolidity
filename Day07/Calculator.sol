// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./MathLibrary.sol";
contract Calculator {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLibrary.add(a, b);
    }
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLibrary.subtract(a, b);
    }
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLibrary.multiply(a, b);
    }
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLibrary.divide(a, b);
    }
    function modulo(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLibrary.modulo(a, b);
    }
    function squareRoot(uint256 a) public pure returns (uint256) {
        return MathLibrary.sqrt(a);
    }
    function absoluteValue(int256 a) public pure returns (uint256) {
        return MathLibrary.abs(a);
    }
    function exponentiate(uint256 base, uint256 exponent) public pure returns (uint256) {
        return MathLibrary.power(base, exponent);
    }
}