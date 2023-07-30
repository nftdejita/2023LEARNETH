// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Visibility {
    uint private privateVar;
    uint internal internalVar;
    uint public publicVar;

    function externalFunction() external pure returns (uint) {
        return 123;
    }

    // TODO: Implement functions to set variables and call externalFunction
}
