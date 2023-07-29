// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract TestContract {
    uint public value;

    function setValue(uint _value) public {
        require(_value <= 100, "Value must be less than or equal to 100.");
        if (_value >= 50) {
            revert("Value must be less than 50.");
        }
        value = _value;
    }
}