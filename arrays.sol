//Part 3: Arrays
pragma solidity ^0.6.0
contract MyContract {
	//Arrays
	uint[] public uintArray = [1,2,3];
	string[] public stringArray = ["apple", "banana", "carrot"];
	string[] public values;
	uint[][] public array2D = [[1,2,3], [4,5,6]];

	function addValue(string memory _value) public {
	// the push method adds a value to the end of the array much like the .append list method in Python
	values.push(_value);
	}
	
	function valueCount() public view returns(uint) {
	return values.length;
	}
}
