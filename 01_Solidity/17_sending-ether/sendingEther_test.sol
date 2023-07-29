pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./sendingEther.sol";

contract MyTest {
    TestContract testContract;

    function beforeEach() public {
        testContract = new TestContract();
    }

    function checkDeposit() public payable {
        testContract.deposit{value: 1 ether}();
        Assert.equal(testContract.balances(address(this)), 1 ether, "Balance is not correct after deposit");
    }

    function checkWithdraw() public {
        testContract.deposit{value: 1 ether}();
        testContract.withdraw(1 ether);
        Assert.equal(testContract.balances(address(this)), 0, "Balance is not correct after withdraw");
    }
}
