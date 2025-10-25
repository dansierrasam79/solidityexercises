pragma solidity ^0.6.0;
contract Counter {
// count is the state variable
uint public count = 1;

// the "view" modifier is used whenever the value returned from this function can only be seen but not altered
function getCount() public view returns(uint) {
return count;
}

function incrementCount() public {
count ++;
}
}
