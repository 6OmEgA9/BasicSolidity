// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Abstract contract ThreeDObject
abstract contract ThreeDObject {
    // Abstract functions (no implementation)
    function surfaceArea() public virtual view returns (uint);
    function volume() public virtual view returns (uint);
}

// Box contract inheriting ThreeDObject
contract Box is ThreeDObject {
    uint public length;
    uint public width;
    uint public height;
    
    constructor(uint _length, uint _width, uint _height) {
        length = _length;
        width = _width;
        height = _height;
    }
    
    function surfaceArea() public view override returns (uint) {
        return 2 * (length * width + width * height + height * length);
    }
    
    function volume() public view override returns (uint) {
        return length * width * height;
    }
}

// Cube contract inheriting ThreeDObject
contract Cube is ThreeDObject {
    uint public side;
    
    constructor(uint _side) {
        side = _side;
    }
    
    function surfaceArea() public view override returns (uint) {
        return 6 * side * side;
    }
    
    function volume() public view override returns (uint) {
        return side * side * side;
    }
}

// Cylinder contract inheriting ThreeDObject
contract Cylinder is ThreeDObject {
    uint public radius;
    uint public height;
    uint constant PI = 314; // Simplified PI * 100 for integer arithmetic
    
    constructor(uint _radius, uint _height) {
        radius = _radius;
        height = _height;
    }
    
    function surfaceArea() public view override returns (uint) {
        // 2πr² + 2πrh (multiplied by 100 due to PI approximation)
        return (2 * PI * radius * radius + 2 * PI * radius * height) / 100;
    }
    
    function volume() public view override returns (uint) {
        // πr²h (multiplied by 100 due to PI approximation)
        return (PI * radius * radius * height) / 100;
    }
}

// Cone contract inheriting ThreeDObject
contract Cone is ThreeDObject {
    uint public radius;
    uint public height;
    uint constant PI = 314; // Simplified PI * 100 for integer arithmetic
    
    constructor(uint _radius, uint _height) {
        radius = _radius;
        height = _height;
    }
    
    function surfaceArea() public view override returns (uint) {
        // πr² + πr√(r² + h²) approximated as πr(r + h) for simplicity
        return (PI * radius * (radius + height)) / 100;
    }
    
    function volume() public view override returns (uint) {
        // (1/3)πr²h (multiplied by 100 due to PI approximation)
        return (PI * radius * radius * height) / 300;
    }
}

// Main contract to create objects and display results
contract MainContract {
    Cube public cube;
    Cylinder public cylinder;
    Cone public cone;
    
    constructor() {
        // Initialize objects with sample dimensions
        cube = new Cube(5);           // Cube with side 5
        cylinder = new Cylinder(3, 4); // Cylinder with radius 3, height 4
        cone = new Cone(3, 6);        // Cone with radius 3, height 6
    }
    
    // Function to get surface areas
    function getSurfaceAreas() public view returns (uint, uint, uint) {
        return (
            cube.surfaceArea(),
            cylinder.surfaceArea(),
            cone.surfaceArea()
        );
    }
    
    // Function to get volumes
    function getVolumes() public view returns (uint, uint, uint) {
        return (
            cube.volume(),
            cylinder.volume(),
            cone.volume()
        );
    }
}