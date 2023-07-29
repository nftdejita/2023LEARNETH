pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./contractAccount.sol";

contract MyTest {
    Charity charity;
    address acc0;

    function beforeEach() public {
        acc0 = TestsAccounts.getAccount(0);
        charity = new Charity();
    }

    function checkWithdraw() public {
        try charity.withdraw() {
            Assert.ok(false, "Non-owner should not be able to withdraw");
        } catch {
            Assert.ok(true);
        }
    }
}
