// SPDX-License-Identifier: MIT
pragma solidity <= 0.8.19;

contract LedgerBalance {
    mapping(address => uint) balance;
    function updatesBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }

    function viewBalance() public view returns(uint currBalance) {

        currBalance = balance[msg.sender];

        return currBalance;
    }
}

contract Updated {
    function updateBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updatesBalance(30);
        ledgerBalance.viewBalance();
    }
}

contract simpleStorage{
    uint storedData;
    function set(uint x) public {
        storedData = x;
        //storedData = block.difficulty;
        //storedData = block.timestamp;
        //storedData = block.number;
    }

    function get() public view returns(uint){
        return storedData;
    }
}
