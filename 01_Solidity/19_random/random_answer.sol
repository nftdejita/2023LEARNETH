// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract TestContract {
    function generateRandomNumber() public view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty)));
    }
}
