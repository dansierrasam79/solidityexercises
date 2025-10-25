//Data Types
pragma solidity ^0.6.0
contract MyContract {
	int public myInt = 1;
	uint public myUint = 1; // cannot have a sign + or -
	uint256 public myUint256 = 1;
	uint8 public myUint8 = 1;
	string public myString = "Hello, World!";
	bytes32 public myBytes32 = "Hello, World!";
	address public myAddress = "ox5A...29c4c;

	struct MyStruct {
	uint myInt;
	string myString;
	}	
	
	MyStruct public myStruct = MyStruct(1, "Hello, World!");

	// Local variables
	function getValue() public pure returns(uint){
	uint value = 1;
	return value;
	}
}
