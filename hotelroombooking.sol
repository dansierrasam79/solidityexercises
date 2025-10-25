// Ether, Modifiers, Visibility, Events and Enums
pragma solidity ^0.6.0;
contract HotelRoom {
	enum Statuses {Vacant, Occupied};
	Statuses currentStatus;
	
	event Occupy(address _occupant, uint _value);
	
	address payable public owner;
	
	constructor() public {
		owner = msg.sender;
		currentStatus = Statuses.Vacant;
	}
	
	modifier onlyWhileVacant {
		require(currentStatus == Statuses.Vacant, "Currently occupied.");
		_;
	}
	
	modifier costs(uint _amount) {
		//Check price
		require(msg.value >= _amount, "Not enough Ether provided");
		_;
	}
		
	// Pay the owner to book the hotel room
	receive() external payable onlyWhileVacant costs (2 ether){
		currentStatus = Statuses.Occupied;
		owner.transfer(msg.value);
		emit Occupy(msg.sender, msg.value);
	}
}
