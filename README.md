# Supplyer Contract

## Description
The **Supplyer** contract is a Solidity smart contract designed to manage a supply value. It ensures safe and validated operations like adding, reducing, and incrementing supply, with robust error handling.

## Author
- **Name**: Khalid Khandaker  
- **Email**: 202110233@fit.edu.ph  
- **Institution**: FEU Tech  

## Functions
- **`constructor(uint256 initialAmount)`**:  
  Initializes the contract with a starting `supply`.  
  - **Validation**: Requires `initialAmount > 0`.  
  - **Error Message**: `"Error Adding: Gas must be greater than 0"`.  

- **`addSupply(uint256 amount)`** (internal):  
  Adds to the supply safely.  
  - **Validation**: Uses `assert` to ensure no overflow.  

- **`reduceSupply(uint256 amount)`**:  
  Reduces the supply by a specified amount.  
  - **Validation**: Reverts if `amount > supply`.  
  - **Error Message**: `"Error Reducing: Decrease value is greater than Gas"`.  

- **`incrementSupply(uint256 amount)`**:  
  Publicly increments the supply.  
  - **Validation**: Requires `amount > 0`.  
  - **Error Message**: `"Error Updating: Ammount must be greater than 0"`.  

## Error Handling
- **`require`**: Ensures valid inputs.  
- **`assert`**: Prevents internal overflows.  
- **`revert`**: Stops execution for invalid operations.

## Usage
1. Deploy the contract with an `initialAmount` greater than 0.
2. Use `incrementSupply` to increase supply or `reduceSupply` to decrease it.
3. Supply changes are validated to ensure accuracy and prevent errors.
