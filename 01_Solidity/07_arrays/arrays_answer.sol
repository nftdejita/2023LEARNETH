// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Arrays {
    // A fixed-size array with 2 elements:
    uint[2] public fixedArray;
    // A dynamic array that starts empty, but can be resized:
    uint[] public dynamicArray;

    function setFixedArray(uint _index, uint _value) public {
        fixedArray[_index] = _value;
    }

    function getFixedArray(uint _index) public view returns (uint) {
        return fixedArray[_index];
    }

    function pushDynamicArray(uint _value) public {
        dynamicArray.push(_value);
    }

    function popDynamicArray() public {
        dynamicArray.pop();
    }

    function getDynamicArray(uint _index) public view returns (uint) {
        return dynamicArray[_index];
    }

    function getDynamicArrayLength() public view returns (uint) {
        return dynamicArray.length;
    }
}
