// SPDX-License-Identifier: MIT


pragma solidity ^0.8.19;


/**
 * @title   Student Registry
 * @author  LegendaryCode
 * @notice  A student registry, that allows only authorized authorized users (e.g., an administrator )  to add, edit, and view student details (Name, Age, Course)
 */


contract StudentRegistry {

            /** TYPE DECLARATION */
    /// @notice Stores the basic details about a student
    struct Student {  
        string name ;
        uint256 age;
        string course;
        bool isActive;
    }


            /** STATE VARIABLES */
 
    /// @notice Stores the address of the contract deployer (owners address or admistrator)
    address public owner; 

    /// @notice Maps an address to a Student struct
    mapping(address => Student) public studentRecords;

    /// @notice Keeps track of all registered students
    address[] public studentAddress;


            /** ERROR */
    /// @notice Custome error. Used when an unauthorized address attempts to call a restricted function
    error StudentRegistry__NotOwner(); 


            /** MODIFIER */
    /// @notice Restricts access to only owner of the contract or admistrator
    modifier onlyOwner() {
        if(msg.sender != owner) {
            revert StudentRegistry__NotOwner();
        }
        _;
    }

    
            /** FUNCTIONS */ 
    /// @notice constructor(), Sets the owner of the contract/admistrator
    constructor () { 
        owner = msg.sender;
    }

    /// @notice Function addStudent(), adds a student if not existing and also inherit onlyOwner modifier()
    function addStudent(address _studentAdress, string memory _name, uint256 _age, string memory _course) public onlyOwner {
        
        // Checks if a student already exist or 
        require(!studentRecords[_studentAdress].isActive, "Student those not exist, Add student details");
        
        // If a student record those not exist (using their address) then Create / Add the Student Data
        studentRecords[_studentAdress] = Student(_name, _age, _course, true);

        // Keeps tracks of all registeredstudent and list them all 
        studentAddress.push(_studentAdress);
    }

    /// @notice Function editStudent(), for editing an existing student (only be the owner of the contract or admistrator)
    function editStudent(address _studentAdress, string memory _newName, uint256 _newAge, string memory _newCourse) public onlyOwner {

        // If a student record those  exist (using their address) then Update the Student Data
        require(studentRecords[_studentAdress].isActive, "Student does not exist , cant update");

        // Updating a student details , if only it existed.
        studentRecords[_studentAdress].name = _newName;
        studentRecords[_studentAdress].age = _newAge;
        studentRecords[_studentAdress].course = _newCourse;
    }

    /// @notice Function getStudentDetails(), gets a particular student details.
    function getStudentDetails(address _studentAddress) public view returns(Student memory) {

        // return a student details using just with their address
        return studentRecords[_studentAddress];
    }




}
