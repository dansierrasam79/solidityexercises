// Part 1: The structure of a smart contract
pragma solidity ^0.6.0;
contract Counter {

constructor() public {
count = 0;
}
// the "view" modifier is used whenever the value returned from this function can only be seen but not altered
function getCount() public view returns(uint) {
return count;
}

function incrementCount() public {
count ++;
}
}

