pragma solidity ^0.4.0;

// yeah you can use it
contract Interest {
	address owner;
	uint lastTimestamp;
	uint balance;
	uint initialBalance;

	function Interest(uint _initialBalance) public {
		owner = msg.sender;
		lastTimestamp = now;
		balance = _initialBalance;
		initialBalance = _initialBalance;
	}

	modifier isOwner() {
		require(msg.sender == owner);
		_;
	}

    function getMinutesDiff(uint startDate, uint endDate) private pure returns (uint) {
        return uint((endDate - startDate)) / 60; 
    }

	function withdraw(uint _amount) public isOwner {
		uint numMinutes = getMinutesDiff(lastTimestamp, now);
		
		if (balance >= initialBalance) {
    		for (uint i = 0; i < numMinutes; i++) {
    		    balance = balance * (101/uint(100)); // https://github.com/ethereum/solidity/issues/3200
    		}
		}
		
		require(_amount <= (balance * (9/uint(10)))); 
		
		balance -= _amount;
		lastTimestamp = now;
		owner.transfer(_amount);
	}
}
