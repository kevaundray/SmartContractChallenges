pragma solidity ^0.4.0;

// yeah you can use it

contract PiggyBank {
    address child;
    address owner;
    uint16 maxWithdrawAmount;
    
    function PiggyBank(address _child, uint16 _maxWithdrawAmount) public {
        owner = msg.sender;
        child = _child;
        maxWithdrawAmount = _maxWithdrawAmount;
    }
    
    modifier isSarah() {
        require(msg.sender == child);
        _;
    }
    
    function deposit(uint256 amount) payable public {
        require(msg.value == amount);
    }
    
    function withdraw(uint16 amount) public isSarah() {
        if (amount <= maxWithdrawAmount) {
            msg.sender.transfer(amount);
        }
    }
}
