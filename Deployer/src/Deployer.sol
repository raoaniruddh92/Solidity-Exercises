// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Deployer {
    string public greeting;

    constructor(string memory _greeting){
        greeting=_greeting;
    }

}
