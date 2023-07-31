// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Charity {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    function donate() public payable {}

    function withdraw() public {
        // TODO: Implement owner check
        uint amount = address(this).balance;
        payable(owner).transfer(amount);
    }
}
