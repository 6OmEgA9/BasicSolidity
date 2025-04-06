// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the MathLibrary
import "./Math.sol";

contract TestMathLibrary {
    // Using the library for uint type (optional, for direct calls on uint)
    using MathLibrary for uint;

    // State variables to store test results
    uint public sqrtResult;
    uint public absResult;
    uint public squareResult;
    uint public maxResult;
    uint public minResult;

    // Function to test all library functions
    function testFunctions(uint _num1, int _num2, uint _num3) public {
        // Test square root
        sqrtResult = MathLibrary.sqrt(_num1);

        // Test absolute value
        absResult = MathLibrary.abs(_num2);

        // Test square
        squareResult = MathLibrary.square(_num1);

        // Test maximum and minimum with _num1 and _num3
        maxResult = MathLibrary.max(_num1, _num3);
        minResult = MathLibrary.min(_num1, _num3);
    }

    // Alternative: Test using the 'using' directive
    function testUsingDirective(uint _num1, uint _num2) public {
        sqrtResult = _num1.sqrt();          // Direct call via 'using'
        squareResult = _num1.square();      // Direct call via 'using'
        maxResult = MathLibrary.max(_num1, _num2); // Still explicit for clarity
        minResult = MathLibrary.min(_num1, _num2); // Still explicit for clarity
    }

    // Getter functions to view results
    function getResults() public view returns (
        uint _sqrt,
        uint _abs,
        uint _square,
        uint _max,
        uint _min
    ) {
        return (sqrtResult, absResult, squareResult, maxResult, minResult);
    }
}