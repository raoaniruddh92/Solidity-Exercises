// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsPrime {
    /**
     * @notice Returns true if "number" is a prime number, false otherwise.
     * @dev Optimized check by only iterating up to the square root of the number.
     * @param number The number to check for primality.
     * @return true if the number is prime, false otherwise.
     */
    function isPrime(uint256 number) public pure returns (bool) {
        // 0 and 1 are not prime numbers.
        if (number <= 1) {
            return false;
        }

        // 2 and 3 are prime numbers.
        if (number <= 3) {
            return true;
        }

        // Any even number > 2 is not prime.
        if (number % 2 == 0) {
            return false;
        }

        // Only need to check for divisors up to the square root of 'number'.
        // We start at 3 and increment by 2 (checking only odd numbers).
        // Since Solidity lacks a native square root function for uint256,
        // we can use a standard integer square root implementation or estimate.
        // For simplicity in a contract, we rely on the built-in exponentiation trick
        // or a library/custom implementation. For this example, we'll use an efficient
        // check that doesn't strictly rely on SQRT but still greatly reduces iterations.

        // Standard optimization: check odd numbers up to a reasonable limit or SQRT.
        // A common pattern is to check for divisibility by 3, and then check numbers
        // of the form 6k ± 1.

        if (number % 3 == 0) {
             return false;
        }

        // Iterate starting at 5, checking numbers of the form 6k-1 and 6k+1
        uint256 i = 5;
        // The condition i * i <= number is the same as i <= sqrt(number)
        while (i * i <= number) {
            // Check i (which is 6k-1)
            if (number % i == 0) {
                return false;
            }
            // Check i + 2 (which is 6k+1)
            if (number % (i + 2) == 0) {
                return false;
            }
            // Increment by 6 to get to the next pair (6(k+1)-1 = 6k+5)
            i += 6;
        }

        // If no divisors were found, the number is prime.
        return true;
    }
}