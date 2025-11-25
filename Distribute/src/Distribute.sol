// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Distribute {
    /*
        This exercise assumes you know how to sending Ether.
        1. This contract has some ether in it, distribute it equally among the
           array of addresses that is passed as argument.
        2. Write your code in the `distributeEther` function.
    */
    address[] distributers;
    uint value;
    constructor(
        uint value,
        address[] memory lol
    ) payable {
        distributers=lol;
        value=msg.value;
    }

    function distributeEther(address[] memory addresses) public {
        uint value=address(this).balance;
        uint value_per=value/distributers.length;
        for(uint i=0;i<distributers.length;i++){
            payable(address(distributers[i])).transfer(value_per);
        }
    }
}
