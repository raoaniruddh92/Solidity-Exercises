// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsSorted {
    /**
     * Returns true if the members of "arr" are sorted in ascending order (a[i] <= a[i+1]), or false otherwise.
     */
    function isSorted(uint256[] calldata arr) public pure returns (bool) {
        // Handle arrays with 0 or 1 element, which are always sorted.
        if (arr.length <= 1) {
            return true;
        }

        // Iterate up to the second-to-last element to safely compare arr[i] with arr[i+1].
        // The comparison for ascending order is: arr[i] must be LESS THAN OR EQUAL TO arr[i+1].
        // If arr[i] is GREATER THAN arr[i+1], the array is NOT sorted.
        for (uint i = 0; i < arr.length - 1; i++) {
            if (arr[i] > arr[i+1]) {
                // Found an element out of ascending order
                return false;
            }
        }

        // If the loop completes without finding any unsorted pair, the array is sorted.
        return true;
    }
}