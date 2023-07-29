// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./events.sol";

contract MyTest {
    TestContract testContract;

    function beforeEach() public {
        testContract = new TestContract();
    }

    function checkSetValueEvent() public {
        testContract.setValue(50);
        // Check if the ValueChanged event was emitted with the correct parameters
    }
}
