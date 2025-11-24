// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

/**
 * @title Parent
 * @notice Contains a value variable accessible internally.
 */
contract Parent {
    // 1. Changed visibility from 'private' to 'internal'.
    // 'internal' means the variable is accessible within the contract 
    // it is defined in (Parent) and all contracts that inherit from it (Child).
    uint256 internal _value;
}

/**
 * @title Child
 * @notice Inherits from Parent and can now access the internal _value variable.
 */
contract Child is Parent {
    // The Child contract can now directly access and modify _value
    // because its visibility is internal.

    /**
     * @notice Sets the internal _value inherited from Parent.
     * @param newValue The new value to set.
     */
    function setValue(uint256 newValue) public {
        _value = newValue; // This assignment is now valid
    }

    /**
     * @notice Gets the internal _value inherited from Parent.
     * @return The current value of _value.
     */
    function getValue() public view returns (uint256) {
        return _value;
    }

    /**
     * @notice Example of an internal function in Parent that can access _value.
     * function getParentValue() internal view returns (uint256) {
     * return _value;
     * }
     */
}