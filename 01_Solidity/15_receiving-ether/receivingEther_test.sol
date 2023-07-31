// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

import "remix_tests.sol";
import "remix_accounts.sol";
import "./receivingEther.sol";

contract MyTest {
    address acc0;
    address acc1;
    address acc2;

    TestContract testContract;

    function beforeEach() public {
        acc0 = TestsAccounts.getAccount(0); 
        acc1 = TestsAccounts.getAccount(1);
        acc2 = TestsAccounts.getAccount(2);
        testContract = new TestContract();
    }

    /// #value: 1000000000000000000
    /// #sender: acc1
    function checkDeposit() public payable {
        testContract.deposit{value: 1 ether}();
        Assert.equal(testContract.balances(address(this)), 1 ether, "Balance is not correct after deposit");
    }
}
