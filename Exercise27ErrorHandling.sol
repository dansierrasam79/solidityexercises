// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

contract Vendor {
address seller;

modifier onlySeller() {
    require(msg.sender == seller, 'Sender not authorized');
    _;
}

function becomeSeller() public {
    seller = msg.sender;
}

function sell(uint _amount) payable public onlySeller {
    if (_amount > msg.value) {
        revert("Amount not high enough");
    }
}
}
