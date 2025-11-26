// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Typecast {
    /**
     * Goal: Check if msg.value (uint256) is equal to the address of this contract, 
     * which requires converting the address to a uint256 first.
     */

    function typeCast() external payable {
        
        // 1. Convert the address of this contract (address(this)) to a uint256.
        //    We must first cast it to a bytes20, then to a uint256.
        uint256 addressAsUint = uint256(uint160(address(this)));
        
        // 2. Compare the sent value (msg.value) to the contract's address (as a uint256).
        // The comparison is now (uint256) == (uint256), which is valid.
        require(msg.value == addressAsUint, "Sent value does not match contract address as uint");
    }
}