// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract TestContract {
    uint public value;

    event ValueChanged(uint oldValue, uint newValue);

    function setValue(uint _value) public {
        uint oldValue = value;
        value = _value;
        emit ValueChanged(oldValue, _value);
    }
}