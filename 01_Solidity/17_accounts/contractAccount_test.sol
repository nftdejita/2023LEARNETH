// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

import "remix_tests.sol";
import "remix_accounts.sol";
import "./contractAccount.sol";

contract MyTest {
    Charity charity;
    address acc0 = TestsAccounts.getAccount(0); //owner by default
    address acc1 = TestsAccounts.getAccount(1);
    address acc2 = TestsAccounts.getAccount(2);
    address ownerA;

    function beforeAll() public {
        charity = new Charity();
    }

    /// #sender: account-1
    /// #value: 1000000000000000000
    function checkDonate() public payable {
        Assert.equal(msg.sender,acc1, "donate account not acc1");
        charity.donate{value: 1.0 ether}();
        Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after donate");
    }

    /// #value: 0
    /// #sender: account-0
    function checkWithdraw1() public payable {
        Assert.equal(msg.sender, acc0, "withdraw1 sender account not acc0");
        ownerA = charity.owner();
        Assert.equal(ownerA,acc0, "owner account not acc0");
        charity.withdraw();
        Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after checkWithdraw1");
        //try charity.withdraw() {
        //    Assert.ok(false, "Non-owner should not be able to withdraw");
        //    Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after donate");
        //} catch {
         //   Assert.ok(true,"OK");
        //    Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after donate");
        //}

    }

    /// #value: 1000000000000000000
    /// #sender: account-1
    function checkWithdraw2() public payable {
        Assert.equal(msg.sender,acc1, "checkWithdraw2 sender account not acc1");
        charity.donate{value: 1.0 ether}();
        Assert.equal(address(charity).balance, 1 ether, "checkWithdraw2 Balance is not correct after donate");
        charity.withdraw();
        Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after checkWithdraw2");
        //try charity.withdraw() {
        //    Assert.ok(false, "Non-owner should not be able to withdraw");
        //    Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after donate");
        //} catch {
         //   Assert.ok(true,"OK");
        //    Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after donate");
        //}

    }

    receive() external payable {}
}