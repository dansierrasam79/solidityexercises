// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// OPERATORS - 

//An operator in a programming language is a symbol that tells the compiler o
//or interpreter to perform specific mathematical, relational or logical operation and produce final result.
// Arithmetic Operators: + - % / 

// Comparison Operators: Operators which compare operands 
// Ex: less than: <, greater than: >, equality: ==, false equality: !=
//      less than or equal to: <=, greater than or equal to: >= 

// Logical Operators: && (Logical AND), || (Logical OR), ! (Logical NOT)
// Bitwise Operators: & (Bitwise AND), | (BitWise OR), ^ (Bitwise XOR), 

// a < b && b > c  - logical AND (Both conditions must be satisfied)
// a < b || b > c  - logical AND (Either condition must be satisfied)
// !(a < b) = logiacl not

//  Assignment Operator  a = b (a is assigned the value of b )

contract AssignmentOperator {
    uint b = 4;
    uint a = 3;
 
    function assign() public view returns(uint) {
            uint c = 2;
 
            // return c + c + b; // rewrite this result in assignment form?
            // return c = c + c + b; 
            return c += c + b; // += is a short haded way to write x * x * y = x *= y
    }
    
}
