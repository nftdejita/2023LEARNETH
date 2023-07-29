// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "remix_tests.sol";
import "./inputsAndOutputs.sol";

contract MyTest {
    TestContract testContract;

    function beforeEach() public {
        testContract = new TestContract();
    }

    function checkSetValueWithinRange() public {
        testContract.setValue(40);
        uint value = testContract.value();
        Assert.equal(value, 40, "Value is not correctly set within the range.");
    }

    function checkSetValueOutOfRange() public {
        bool success = true;
        try testContract.setValue(150) {
            success = false;
        } catch {
            // Expected error
        }
        Assert.ok(success, "Value should not be set beyond the range.");
    }

    function checkSetValueAboveThreshold() public {
        bool success = true;
        try testContract.setValue(60) {
            success = false;
        } catch {
            // Expected error
        }
        Assert.ok(success, "Value should not be set above the threshold.");
    }
}