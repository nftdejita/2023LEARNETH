// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Person {
        string name;
        uint age;
    }

    Person public person;

    function setPerson(string memory _name, uint _age) public {
        person = Person(_name, _age);
    }

    function getPerson() public view returns (string memory, uint) {
        return (person.name, person.age);
    }
}
