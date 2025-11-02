// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

abstract contract Calculator {
    function returnIntegers()public virtual view returns(uint);
}

contract Test is Calculator{
    function returnIntegers() public override pure returns(uint){
        uint a = 1;
        uint b = 2;
        uint result;
        result = a + b;
        return result;
    }
}
