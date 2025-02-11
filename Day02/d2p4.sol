// SPDX-License-Identifier: GPL-3
pragma solidity >=0.8.2<0.9.0;

contract TriangleArea {
    
    // Function to calculate the area of an equilateral triangle
    // using the formula: Area = (3 * sqrt(3) / 4) * r^2
    function calculateArea(uint256 radius) public pure returns (uint256) {
        // Using the formula for an equilateral triangle inscribed in a circle
        // 3 * sqrt(3) / 4 * r^2
        uint256 area = (3 * 1732050808 / 4) * (radius * radius) / 1000000000; // Approximating sqrt(3) = 1.732050808 in integer math
        
        return area;
    }
}
