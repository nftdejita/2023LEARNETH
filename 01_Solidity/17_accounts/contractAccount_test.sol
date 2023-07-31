// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

import "remix_tests.sol";
import "remix_accounts.sol";
import "./contractAccount.sol";

contract MyTest {
    Charity charity;
    address acc0;
    address acc1;

    function beforeAll() public {
        acc0 = TestsAccounts.getAccount(0);
        acc1 = TestsAccounts.getAccount(1);
        charity = new Charity();
    }

    /// #sender: account-1
    /// #value: 2000000000000000000
    function checkDonate() public payable {
        charity.donate{value: 1.0 ether}();
        Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after donate");
    }


    /// #value: 0
    /// #sender: account-0
    function checkWithdraw1() public payable {
        Assert.equal(msg.sender, acc0, "account not acc0");
        charity.withdraw();
        Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after donate");
        //try charity.withdraw() {
        //    Assert.ok(false, "Non-owner should not be able to withdraw");
        //    Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after donate");
        //} catch {
         //   Assert.ok(true,"OK");
        //    Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after donate");
        //}

    }

    /// #value: 0
    /// #sender: account-1
    function checkWithdraw2() public payable {
        Assert.equal(msg.sender, acc1, "account not acc1");
        charity.withdraw();
        Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after donate");
        //try charity.withdraw() {
        //    Assert.ok(false, "Non-owner should not be able to withdraw");
        //    Assert.equal(address(charity).balance, 0 ether, "Balance is not correct after donate");
        //} catch {
         //   Assert.ok(true,"OK");
        //    Assert.equal(address(charity).balance, 1 ether, "Balance is not correct after donate");
        //}

    }

}