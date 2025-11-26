// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

// You may not modify this contract
contract Number {
    function getNumber() public view virtual returns (uint256) {
        return 3;
    }
}

contract InheritanceOverride is Number {
    function getNumber() public  override view virtual returns (uint256) {
        return 10;
    }
}
