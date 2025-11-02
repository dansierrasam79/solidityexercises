// Final Operators Exercise 
// 0. create a contract called final exercise (FinalExercise)
// 1. initialize 3 state variables a, b, f 
// 2. assign each variable the following: a should equal 300, b should equal 12,
// and f should equal 47
// 3. create a function called finalize that is public and viewable which returns 
// a local variable d 
// 4. ininitialize d to 23 
// 5. return d in short handed assignment form to multiply itself by itself and then 
// subtracted by b 
// 6. bonus make the function conditional so that it will only return the multiplcation if
// a is greather than or equal to a and b is less than f otherwise d should return 23

// Solution
// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract ComparisonOperators {
    
    uint a = 323;
    uint b = 54;
    
    // Only run the function compare so that a is equal to or less than b 
    // otherwise submit the message - This comparison is false!
    
    function compare() view public {
        
        require(a <= b, 'This comparison is false!' );
        
    }
    
}
