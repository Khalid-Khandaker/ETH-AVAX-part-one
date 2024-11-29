// SPDX-License-Identifier: MIT
//Khalid Khandaker/202110233@fit.edu.ph
//FEU Tech
pragma solidity 0.8.26;

contract Supplyer {
    uint256 public supply;

    constructor(uint256 initialAmount) {
        require(initialAmount > 0, "Error Adding: Gas must be greater than 0");
        supply = initialAmount;
    }

    function incrementSupply(uint256 amount) internal {
        uint256 updatedSupply = supply + amount;
        assert(updatedSupply >= supply);
        supply = updatedSupply;
    }

    function reduceSupply(uint256 amount) public {
        if (amount > supply) {
            revert("Error Reducing: Decrease value is greater than Gas");
        }
        supply -= amount;
    }

    function updateSupply(uint256 amount) public {
        require(amount > 0, "Error Updating: Ammount must be greater than 0");
        incrementSupply(amount);
    }
}
