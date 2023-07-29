// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract TestContract {
    uint public value;

    function setValue(uint _value) public {
        value = _value;
    }
}