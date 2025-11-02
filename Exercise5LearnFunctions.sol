// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract learnFunctions {
    
   //  function-name(parameter-list) scope returns() {
   //statements }
   
   function remoteControlOpen(bool closedDoor, bool openDoor ) public returns(bool) 
   {
       // all the code of the function - the script - the statement 
   }
   
    // local variables will superceed state variables    
    
   uint a = 45; // state variable
   // If we know a is always 45 - then it's smart to just instantiate a = 45 as a state variable
   
      // create a function that can add up two variables
   function addValues() public view returns (uint) {
       // all the variables that we write in the function remains localized in the function
       // uint a = 2; // local variable 
       uint b = 3;
       uint result = a + b;
       return result;
   }
   
   
   function addNewValues() public view returns (uint){
      //  uint a = 1;
       uint b2 = 5;
       uint result = a + b2;
       return result;
   }
   
   // Exercise: 1. Create a function in the learnFunctions contract called multiplyCalculator
   // 2. Add two parameters to the function a & b and set them as integers.
   // 3. Grant the function public visibility as well as viewing capability for the IDE.
   // 4. Return an integer for the function
   // 5. Create a variable result that contains the logic to multiply a and b 
   // 6. Return the result 
   // 7. Compile and deploy your very first dApplication and test out the results!! 
   
   
   uint b3 = 4; 
   
    function multiplyCalculatorByFour(uint a2) public view returns (uint) {
        uint result = a2 * b3;
        return result;
    }
    
        function divideCalculatorByFour(uint a3) public view returns (uint) {
        uint result = a3 / b3;
        return result;
    }
