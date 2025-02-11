// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract Triangle {

    // Function to check if the sides form a valid triangle
    function isValidTriangle(int a, int b, int c) public pure returns (bool) {
        return (a + b > c && a + c > b && b + c > a);
    }

    // Function to find the type of the triangle
    function findType(int a, int b, int c) public pure returns (string memory) {
        if (!isValidTriangle(a, b, c)) {
            return "Not a valid triangle";
        }

        // Check for Equilateral
        if (a == b && b == c) {
            return "Equilateral";
        }
        // Check for Isosceles
        else if (a == b || b == c || a == c) {
            return "Isosceles";
        }
        // Check for Scalene
        else if (a != b && b != c && a != c) {
            return "Scalene";
        }

        // Check for Right-angled triangle (Pythagoras' theorem)
        if (a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a) {
            return "Right Triangle";
        }

        return "Unknown type";
    }

    // Function to calculate the area of the triangle using Heron's formula
    function calculateArea(int a, int b, int c) public pure returns (string memory) {
        if (!isValidTriangle(a, b, c)) {
            return "Not a valid triangle";
        }

        // Calculate semi-perimeter (s)
        int s = (a + b + c) / 2;

        // Calculate area using Heron's formula: area = sqrt(s * (s-a) * (s-b) * (s-c))
        // We will use a simple integer approach, without handling floating point numbers
        int areaSquared = s * (s - a) * (s - b) * (s - c);

        // Check if the area squared is positive to avoid math errors
        if (areaSquared < 0) {
            return "Invalid area";
        }

        return string(abi.encodePacked("Area can't be exactly calculated in Solidity with integers"));
    }
}
