// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords {
    // Define the Student structure
    struct Student {
        uint roll;
        string name;
        uint marksinPhysics;
        uint marksinChemistry;
        uint marksinMathematics;
        uint totalMarks;
    }

    // Array to store list of students
    Student[] public students;

    // Function to add student details
    function addStudent(
        uint _roll,
        string memory _name,
        uint _physics,
        uint _chemistry,
        uint _mathematics
    ) public {
        // Calculate total marks
        uint total = _physics + _chemistry + _mathematics;
        
        // Create new student and add to array
        students.push(Student({
            roll: _roll,
            name: _name,
            marksinPhysics: _physics,
            marksinChemistry: _chemistry,
            marksinMathematics: _mathematics,
            totalMarks: total
        }));
    }

    // Function to sort students by total marks in descending order (Bubble Sort)
    function sortStudentsByMarks() public {
        uint length = students.length;
        
        for (uint i = 0; i < length - 1; i++) {
            for (uint j = 0; j < length - i - 1; j++) {
                if (students[j].totalMarks < students[j + 1].totalMarks) {
                    // Swap students
                    Student memory temp = students[j];
                    students[j] = students[j + 1];
                    students[j + 1] = temp;
                }
            }
        }
    }

    // Function to get the sorted list of students
    function getStudents() public view returns (Student[] memory) {
        return students;
    }

    // Function to get the number of students
    function getStudentCount() public view returns (uint) {
        return students.length;
    }
}