// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract WelcomeToSolidity {
   
   // is adding two integers
   function getResult() public pure returns(uint){
      uint a = 1;
      uint b = 14;
      uint result = a + b;
      return result;
   }
}
