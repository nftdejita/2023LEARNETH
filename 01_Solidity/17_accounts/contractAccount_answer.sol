// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Charity {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    function donate() public payable {}

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        uint amount = address(this).balance;
        //payable(owner).transfer(amount);
        (bool sent, ) = payable(owner).call{value: amount}("");
        require(sent, "Failed to send Ether");
    }
}
