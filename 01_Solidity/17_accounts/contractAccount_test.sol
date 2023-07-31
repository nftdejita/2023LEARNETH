// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

import "remix_tests.sol";
import "remix_accounts.sol";
import "./contractAccount.sol";

contract MyTest {
    Charity charity;
    address acc3;

    function beforeEach() public {
        acc3 = TestsAccounts.getAccount(3);
        charity = new Charity();
    }

    /// #value: 1000000000000000000
    /// #sender: acc3
    function checkWithdraw() public {
        try charity.withdraw() {
            Assert.ok(false, "Non-owner should not be able to withdraw");
        } catch {
            Assert.ok(true);
        }
    }
}
