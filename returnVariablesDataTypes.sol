// Part 2: Variables, Data Types and Custom Data Structures
pragma solidity ^0.6.0
contract MyContract {
	// State variables are stored on the blockchain
	uint public myUint = 1;	

	// Local variables
	function getValue() public pure returns(uint){
		uint value = 1;
		return value;
	}
	function getUint() public pure returns(uint){
		// returns the value of the state variable
		return myUint;
	}
}
