// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Withdraw {
    uint256 value;
    function withdraw() public {
        payable(address(msg.sender)).transfer(value);
    }

    receive() external payable{
        value=value+msg.value;
    }
}
