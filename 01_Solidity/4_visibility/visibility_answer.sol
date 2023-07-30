// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Visibility {
    uint private privateVar;
    uint internal internalVar;
    uint public publicVar;

    function externalFunction() external pure returns (uint) {
        return 123;
    }

    function setPrivateVar(uint _value) public {
        privateVar = _value;
    }

    function getPrivateVar() public view returns (uint) {
        return privateVar;
    }

    function setInternalVar(uint _value) public {
        internalVar = _value;
    }

    function getInternalVar() public view returns (uint) {
        return internalVar;
    }

    function setPublicVar(uint _value) public {
        publicVar = _value;
    }

    function callExternalFunction() public view returns (uint) {
        return this.externalFunction();
    }
}
