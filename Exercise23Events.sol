// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;
contract LearnEvents{
// declare the event and emit the event after that
    event NewTrade(
        uint indexed date,
        address from,
        address indexed to,
        uint indexed amount
    );

    function trade(address to, address from, uint amount) external {
	    emit NewTrade(block.timestamp, from, to, amount);
    }

}
