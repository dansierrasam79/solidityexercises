// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

contract C {
    // create state variables data (visibility = none) and info (visibility in all contracts)
    uint private data;
    uint public info;

    // Initialize value of data to 10 using a constructor
    constructor(){
        info = 10;
    }

    // Create a function increment that returns the input a + 1
    function increment(uint a) private pure returns (uint){return a+1;}

    //Create a function that sets input a to data
    function updateData(uint a) public {data = a;}

    // Create a function that returns data
    function getData() public view returns (uint){return data;}
    
    // Create a function that accepts 2 inputs and returns their sum 
    // Error #1: Used 'public' instead of 'internal'
    function compute(uint a, uint b) internal pure returns (uint){return a+b;}
}

contract D{
    //Derive contract C, assign it to c, create a new contract instance
    // Error #2 used the 'is' keyword because of confusion with Error #3 not necessary
    C c = new C();

    // Read info from contract C using the object c
    // Error #3: Used info instead of c.info()
    function readInfo() public view returns(uint) {return c.info();}
}

contract E is C{
    uint private result;
    // Assign c as a private instance of the contract C
    // Error #4: Used C c = new C(); instead
    C private c;

    constructor(){
        c = new C();
    }
    // Error #5: Misunderstood the instructions
    // Create a function that accepts 23,5 and uses the compute method in Contract C
    function getComputedResult() public {result = compute(23,5);}

    // Create a function that returns the result
    function getResult() public view returns(uint){return result;}

    // Create a function that returns the value of info in Contract C
    function getNewInfo() public view returns(uint){return info;}
}

