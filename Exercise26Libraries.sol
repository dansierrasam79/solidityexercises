// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

library Search{
    function indexOf(uint[] storage self, uint value) public view returns(uint index){
        for (uint i = 0; i<self.length;i++){
            if(self[i] == value){
                return i;
            }
        }
    }
}

contract Test {
    uint[] data;
    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent(uint val) external view returns(uint) {
        uint value = val;
        uint index = Search.indexOf(data, value);
        return index;
    }
}
