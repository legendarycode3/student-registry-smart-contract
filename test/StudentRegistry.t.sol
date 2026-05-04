// SPDX-License-Identifier: MIT


pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {StudentRegistry} from "../src/StudentRegistry.sol";

contract StudentRegistryTest is Test {
    StudentRegistry studentRegistry;

    address public STUDENTADDRESS = makeAddr("studentAddress");


    /// @notice setUp function
    function setUp() public {
        studentRegistry = new StudentRegistry();
    }


    function testAddStudent() public {
            // ARRANGE
        string memory name = "Williams";
        uint256 age = 27;
        string memory course = "Cryptography";

            // ACT
        studentRegistry.addStudent(STUDENTADDRESS, name, age, course); // adding student first 

            // ASSERT
        StudentRegistry.Student memory student = studentRegistry.getStudentDetails(STUDENTADDRESS);

        assertEq(student.name, "Williams", "Name mismatch");
        assertEq(student.age, age, "Age mismatch");
        assertEq(student.course, course, "Course mismatch");
        assertEq(student.isActive, true, "Active status mismatch");
    }


    /// @notice testAddStudentSetsIsActiveToTrue() function test
    function testAddStudentSetsIsActiveToTrue() public {
            // ARRANGE  // ACT
        studentRegistry.addStudent(STUDENTADDRESS, "Nathaniel", 23, "Blockchain");

            // ASSERT
        StudentRegistry.Student memory student = studentRegistry.getStudentDetails(STUDENTADDRESS);
        assertEq(student.isActive, true); // Check isActive is true
    }



    /// @notice getStudentDetail test
    function testGetStudentDetails() public {
            // ARRANGE 
        string memory name = "Richard";
        uint256 age = 30;
        string memory course = "Solidity";
       //  bool isActive;

            // ACT
        // Adding student first , with a student address
        studentRegistry.addStudent(STUDENTADDRESS, name, age, course); // adding student first 

            // ASSERT
        StudentRegistry.Student memory student = studentRegistry.getStudentDetails(STUDENTADDRESS);
        assertEq(student.name, name, "Name not thesame");
        assertEq(student.age, 30 , "Age not thesame");
        assertEq(student.course, "Solidity", "Course not thesame");
        //assertEq(student.isActive, true, "isActive not checked");
    }




}