// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract ArrayInsertion {

    // Declare an array of integers
    uint[] public arr;

    // Event to log the array after insertion
    event ArrayUpdated(uint[] updatedArray);

    // Function to insert an element at a given position
    function insertAt(uint position, uint value) public {
        require(position <= arr.length, "Position out of bounds");

        // Shift elements to the right to make space for the new element
        arr.push(0); // Adding a dummy element to the end
        for (uint i = arr.length - 1; i > position; i--) {
            arr[i] = arr[i - 1];
        }
        
        // Insert the new value at the specified position
        arr[position] = value;

        // Emit an event with the updated array
        emit ArrayUpdated(arr);
    }

    // Function to retrieve the current array
    function getArray() public view returns (uint[] memory) {
        return arr;
    }
}
