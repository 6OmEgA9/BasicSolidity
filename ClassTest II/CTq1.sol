// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface for College
interface College {
    // State variables (implicitly included in interface as getters)
    function CollegeName() external view returns (string memory);
    function CollegeCode() external view returns (uint);
    
    // Display function declaration
    function display() external view returns (string memory, uint);
}

// Department contract
contract Department {
    // State variables
    string public deptName;
    string public deptHead;
    
    // Constructor to initialize department details
    constructor(string memory _deptName, string memory _deptHead) {
        deptName = _deptName;
        deptHead = _deptHead;
    }
    
    // Function to update department details
    function setDepartmentDetails(string memory _deptName, string memory _deptHead) public {
        deptName = _deptName;
        deptHead = _deptHead;
    }
    
    // Function to display department details
    function displayDepartment() public view returns (string memory, string memory) {
        return (deptName, deptHead);
    }
}

// Student contract inheriting Department and implementing College interface
contract Student is Department, College {
    // State variables for College interface
    string public override CollegeName;
    uint public override CollegeCode;
    
    // State variables for Student
    string public studentName;
    uint public regNo;
    uint public Marks;
    
    // Constructor
    constructor(
        string memory _collegeName,
        uint _collegeCode,
        string memory _deptName,
        string memory _deptHead,
        string memory _studentName,
        uint _regNo,
        uint _marks
    ) Department(_deptName, _deptHead) {
        CollegeName = _collegeName;
        CollegeCode = _collegeCode;
        studentName = _studentName;
        regNo = _regNo;
        Marks = _marks;
    }
    
    // Implementation of display function from College interface
    function display() public view override returns (string memory, uint) {
        return (CollegeName, CollegeCode);
    }
    
    // Function to set student details
    function setStudentDetails(string memory _studentName, uint _regNo, uint _marks) public {
        studentName = _studentName;
        regNo = _regNo;
        Marks = _marks;
    }
    
    // Function to generate report card
    function getReportCard() public view returns (
        string memory collegeName,
        uint collegeCode,
        string memory departmentName,
        string memory departmentHead,
        string memory sName,
        uint registrationNo,
        uint marks
    ) {
        return (
            CollegeName,
            CollegeCode,
            deptName,
            deptHead,
            studentName,
            regNo,
            Marks
        );
    }
}