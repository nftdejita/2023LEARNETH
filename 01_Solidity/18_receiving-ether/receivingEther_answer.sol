// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract TestContract {
    mapping(address => uint) public balances;

    receive() external payable {
        deposit();
    }

    fallback() external payable {
        deposit();
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }
}
