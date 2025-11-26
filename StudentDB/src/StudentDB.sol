// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract StudentDB {
    /* This exercise assumes you know how structs works.
       create a struct `Student` for a student who's name is `John` and age is `12`.
       Return John's age in the function below */

    // 1. Define the Student struct
    struct Student {
        string name;
        uint256 age;
    }

    // 2. Declare a state variable instance of the struct
    Student public student;

    // The constructor initializes the state variable upon contract deployment.
    constructor() {
        // Correctly initialize the 'student' state variable with name "John" and age 12
        student = Student("John", 12);
        // OR: student = Student({name: "John", age: 12});
    }

    // This function can still be used to update the student data if needed (optional fix)
    function createStudent(string memory _name, uint256 _age) public {
        // Correct way to assign values to a state struct variable
        student = Student(_name, _age);
    }

    // return John's age (The main goal of the exercise)
    function getStudentAge() public view returns (uint256) {
        // Access the 'age' member of the 'student' state variable
        return student.age;
    }

    // return the entire struct data (as requested in the original function signature)
    function getEntireStruct() public view returns (Student memory) {
        // Return the student state variable
        return student;
    }
}