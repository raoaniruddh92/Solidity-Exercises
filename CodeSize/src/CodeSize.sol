// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract CodeSize {
    constructor(){
    bytes memory code = new bytes(1500); // fill with anything
        assembly {
            return(add(code, 0x20), mload(code))
        }
    }
}
