# Supplyer Contract

## Description
A Solidity smart contract for managing a supply value with error handling for safe operations like incrementing, reducing, and updating supply.

## Functions
- **`constructor(uint256 initialAmount)`**: Initializes supply; requires `initialAmount > 0`.
- **`incrementSupply(uint256 amount)`**: Internal function to safely add to the supply; uses `assert` to prevent overflow.
- **`reduceSupply(uint256 amount)`**: Reduces supply; reverts if `amount > supply`.
- **`updateSupply(uint256 amount)`**: Publicly adds to the supply; requires `amount > 0`.

## Error Handling
- **`require`**: Validates inputs.
- **`assert`**: Ensures no overflow.
- **`revert`**: Stops invalid operations.

## Usage
1. Deploy with a positive `initialAmount`.
2. Use `updateSupply` to add and `reduceSupply` to decrease supply securely.

## License
MIT License.
