// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

contract A{
    uint innerVal = 100;

    function innerAddTen(uint value) public pure returns(uint){
        return value + 10; 
    }

}

contract B is A {
    uint result;
    function outerAddTen(uint val) public pure returns(uint) {
        return A.innerAddTen(val);
    }

    function returninnerVal() public view returns(uint) {
        return innerVal;
    }
}
