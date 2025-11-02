// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

contract RestrictedAccess {
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _account) {
        require(msg.sender == _account, 'Sender not authorized');
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time, 'function is called too early');
        _;
    }

    function changeOwnerAddress(address _newAddress) onlyBy(owner) public {
        owner = _newAddress;
    }

    // disown current owner
    function disown() onlyAfter(creationTime + 5 seconds) public {
        delete owner;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, 'Not enough Ether');
        _;
    }

    function forceOwnerChange(address _newOwner) payable public costs(200 ether) {
        owner = _newOwner;
    }

}
