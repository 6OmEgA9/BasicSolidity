// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ArrayReversal {

    // Declare a dynamic array of integers
    uint[] public arr;

    // Event to log the array after reversal
    event ArrayReversed(uint[] reversedArray);

    // Function to set the initial array
    function setArray(uint[] memory inputArray) public {
        arr = inputArray;
    }

    // Function to reverse the elements of the array
    function reverseArray() public {
        uint start = 0;
        uint end = arr.length - 1;

        while (start < end) {
            // Swap the elements at 'start' and 'end'
            uint temp = arr[start];
            arr[start] = arr[end];
            arr[end] = temp;

            // Move the pointers towards the center
            start++;
            end--;
        }

        // Emit an event with the reversed array
        emit ArrayReversed(arr);
    }

    // Function to retrieve the current array
    function getArray() public view returns (uint[] memory) {
        return arr;
    }
}
