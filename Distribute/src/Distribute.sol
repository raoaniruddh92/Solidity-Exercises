// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Distribute {
    /*
        This exercise assumes you know how to sending Ether.
        1. This contract has some ether in it, distribute it equally among the
           array of addresses that is passed as argument.
        2. Write your code in the `distributeEther` function.
    */
    constructor(
    ) payable {
    }

    function distributeEther(address[] memory addresses) public {
        uint value=address(this).balance;
        uint value_per=value/addresses.length;
        for(uint i=0;i<addresses.length;i++){
            payable(address(addresses[i])).transfer(value_per);
        }
    }
}
