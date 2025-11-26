// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Fibonacci {
    /*
        Function `fibonacci` takes a uint256 as argument and returns nth fibonacci number.
        
        Fibonacci sequence are 0,1,1,2,3,5,8,13,....
        
        calling fibonacci(6) would return 8, because the 6th Fibonacci number is 8 (F(6)).
        Note: We handle F(0) = 0 and F(1) = 1 explicitly.
    */

    function fibonacci(uint256 _position) public pure returns (uint256) {
        // F(0) is 0
        if (_position == 0) {
            return 0;
        }
        // F(1) is 1
        if (_position == 1) {
            return 1;
        }

        // Initialize F(n-2) and F(n-1)
        uint256 a = 0; // Represents F(i-2)
        uint256 b = 1; // Represents F(i-1)
        uint256 result = 0; // Represents F(i)

        // We've already handled _position 0 and 1, so we start the loop from i=2
        // and run up to and including _position.
        for (uint256 i = 2; i <= _position; i++) {
            // F(i) = F(i-1) + F(i-2)
            result = a + b;
            
            // Move forward: 
            // The old F(i-1) becomes the new F(i-2)
            a = b;
            // The new F(i) becomes the new F(i-1)
            b = result;
        }
        
        // Return the final F(_position)
        return result;
    }
}